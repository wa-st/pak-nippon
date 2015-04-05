# encoding: utf-8

# Simutransのdatのプリプロセッサのようなもの。
module Datt

  ADDON_PREFIX = 'np-'

  # 代入文
  ASSIGN_LINE = /^([A-Za-z0-9_\[\]-]+)=(.+?)( *#.*)?$/
  # 分割
  SEPARATOR_LINE = /^-{2,}$/
  # コメント
  COMMENT_LINE = /^#(.*)$/
  # ディレクティブ
  DIRECTIVE_LINE = /^%(.+)$/
  # 空行
  BLANK_LINE = /^$/
  # 画像指定の右辺
  IMAGE_REF = /(.+)\.(\d+)\.(\d+)/

  # dat(t)を行単位に分解するクラス
  class Lexer
    def initialize(io, filename)
      @io = io
      @filename = filename
      @line_number = 0
      @line = nil
      self.next
    end

    def next
      @last_match = nil
      @line = io.gets

      if @line
        @line.strip!
        @line_number += 1

        case @line
        when COMMENT_LINE
          @type = :comment
        when SEPARATOR_LINE
          @type = :separator
        when ASSIGN_LINE
          @type = :assign
        when BLANK_LINE
          @type = :blank
        when DIRECTIVE_LINE
          @type = :directive
        else
          $stderr.printf "%s: unknown line: \n>>\n%s\n<<\n", location, @line
          @type = :unknown
        end
        @last_match = Regexp.last_match
      else
        @type = :eof
      end
    end

    def location
      sprintf('%s[%i]', File.basename(@filename), @line_number)
    end

    attr_reader :io

    attr_reader :filename

    attr_reader :line

    attr_reader :line_number

    attr_reader :type

    attr_reader :last_match
  end

  # アドオンブロック。「---」で区切られた一つの領域
  class Block
    def initialize(workspace, addon = nil)
      @workspace = workspace
      @addon = addon
      @lines = []
      @dat_variables = {}
      @location = nil
      @fiename = nil
    end

    # ○:image属性からの相対指定
    def img(y, x)
      fail 'image not found' unless  @dat_variables[:image] =~ IMAGE_REF
      format('%s.%i.%i', $1, $2.to_i + y, $3.to_i + x)
    end

    # ●image属性と、level属性から適当に名前を決定する
    def do_autoname(id = nil)
      name = ADDON_PREFIX

      fail 'image not found' unless  @dat_variables[:image] =~ IMAGE_REF
      image_name = $1

      image_name = $1 if image_name =~ /(.+)-\d+$/
      name += image_name + '-'

      name += sprintf('%02d', id) + '-' if id

      name += sprintf('%02d', @dat_variables[:level].to_i)
      push_dat_line "name=#{name}"
    end

    # ●タイル画像用のdatを出力する。
    def do_buil_image(xw, yw, h, dims, seasons, front: false)
      fail 'image not found' unless @dat_variables[:image] =~ IMAGE_REF
      fn = $1
      by = $2.to_i
      bx = $3.to_i

      push_dat_line "dims=#{xw},#{yw},#{dims}"

      mw = [xw, yw].max
      dw = mw * dims
      mh = mw * h
      fb_count = (front ? 2 : 1)
      fb_count.times do |fb|
        fbname = (fb == 0 ? 'backImage' : 'frontImage')

        seasons.times do |season|
          push_dat_line ''

          dims.times do |dim|
            if dim.even?
              txw, tyw = xw, yw
            else
              txw, tyw = yw, xw
            end
            tx = bx + fb * dw + dim * mw
            ty = by + season * mh + (h - 1)

            tyw.times do |y|
              txw.times do |x|
                h.times do |z|
                  lh = sprintf('%s[%i][%i][%i][%i][%i][%i]', fbname, dim, y, x, z, 0, season)
                  rh = sprintf('%s.%i.%i', fn, ty + y * h - z, tx + x)
                  prefix = (x > 0 && y > 0 && z > 0 ? '#' : '')
                  push_dat_line "#{prefix}#{lh}=#{rh}"
                end
              end
            end
          end
        end
      end
    end

    # ●別のファイルを読み込む。
    def do_require(path, addon: nil)
      path = File.expand_path(path, File.dirname(@filename))
      @workspace.require path, addon
    end

    # ●他の定義を取り込む
    def do_include(s, label: false, overwrite: true)
      block = @workspace.get_block(s)

      @lines << '' << "#>>> #{block.location}" if label

      if overwrite
        block.dat_variables.keys.each do |v|
          do_undef v
        end
      end
      block.lines.each do |l|
        if l =~ ASSIGN_LINE && @dat_variables.include?($1.downcase.to_sym)
          @lines << '#' + l
        else
          @lines << l
        end
      end
      @dat_variables = block.dat_variables.merge(@dat_variables)

      @lines << '#<<<' << '' if label
    end

    # ● #addonに値を設定する。
    def do_addon(v = true)
      @addon = v
    end

    # ●定義のみ追加する。シンボルはすべて小文字
    def do_def(s, e)
      @dat_variables[s] = e
    end

    # ●定義を削除する。一致判断は、===で行う。
    def do_undef(cond)
      @dat_variables.keys.each do |k|
        @dat_variables.delete k if cond === k.to_s
      end

      @lines.map! do |line|
        if line =~ ASSIGN_LINE && cond === $1.downcase
          '#' + line
        else
          line
        end
      end
    end

    # ●name属性を設定し、 #addon をfalseに設定する
    def do_resource(s)
      @dat_variables[:name] = s
      @addon = false
    end

    # ソースを評価し、出力対象ならdatを出力する
    def eval_block(lexer)
      @location = lexer.location
      @filename = lexer.filename

      loop do
        case lexer.type
        when :directive
          instance_eval 'do_' + lexer.last_match[1]
        when :assign, :comment, :blank, :unknown
          push_dat_line lexer.line
        else
          break
        end
        lexer.next
      end

      @workspace.blocks << self if @dat_variables.include?(:name)

      write_dat_block if write_dat_block?
    end

    # 評価結果に一行付け加える
    def push_dat_line(line)
      @lines << line

      if line =~ ASSIGN_LINE
        k = $1
        v = $2
        @dat_variables[k.downcase.to_sym] = v
      end
    end

    # 出力対象か？
    def write_dat_block?
      case @addon
      when true
        true
      when false
        false
      when nil
        @dat_variables.include?(:name)
      end
    end

    # 展開指示「#{}」を展開した文字列を返す
    def eval_macro(line)
      line.gsub(/#\{(.+?)\}/) do |m|
        instance_eval($1)
      end
    end

    # 評価結果のdatソースを出力する。
    def write_dat_block
      puts '---'
      prev_line = nil
      @lines.each do |line|
        line = eval_macro(line).strip
        puts line unless line == '' && prev_line == ''
        prev_line = line
      end
    end

    # メンバが見つからない場合は、datの属性を参照させる。
    def method_missing(sym, *args)
      @dat_variables[sym] || fail("unknown method: #{sym}")
    end

    # ファイル名
    attr_reader :filename
    # ブロックが存在する位置を表す文字列。『ファイル名［行番号］』の形式
    attr_reader :location
    # 評価結果の配列
    attr_reader :lines
    # 属性値のハッシュ
    attr_reader :dat_variables
    # ブロックの評価結果を最終的に出力するか否かの状態。
    def addon?
      @addon
    end
  end

  # 作業領域
  class Workspace
    def initialize
      @blocks = []
      @loaded_files = []
    end

    # ファイルを読み込む。既に読み込み済みの場合は、読み込まない
    def require(filename, addon = nil)
      key = File.basename(filename).downcase

      return if @loaded_files.include?(key)

      @loaded_files << key
      File.open(filename, 'r') do |io|
        eval_datt io, filename, addon
      end
    end

    # Blockを探す
    def get_block(name)
      @blocks.each do |blk|
        return blk if blk.name == name
      end
      fail "block not found: #{name}"
    end

    # ファイルを読み込む
    def eval_datt(io, filename, addon = nil)
      lexer = Lexer.new(io, filename)

      lexer.next while lexer.type == :comment
      lexer.next if lexer.type == :separator

      loop do
        case lexer.type
        when :assign, :comment, :directive, :blank, :unknown
          Block.new(self, addon).eval_block(lexer)
        else
          break
        end

        break unless lexer.type == :separator
        lexer.next
      end

      fail "#{lexer.location}: eof expected" unless lexer.type == :eof
    end

    attr_reader :blocks
  end
end

wk = Datt::Workspace.new
wk.eval_datt DATA, 'DATA'
wk.eval_datt ARGF, ARGF.filename

__END__
