# pak.nippon

独自のsimutrans用pakセットを作ってみよう計画。未完成。

## 導入方法

### 1. Simutrans本体のインストール
pak.nipponを実行するにはバージョン120.0以降のSimutransが必要です。
最新のSimutrans本体は[SourceForgeのプロジェクトページ](http://sourceforge.net/projects/simutrans/files/simutrans/)からダウンロードできます。

### 2. pak.nipponのインストール
pak.nipponは[Releaseページ](https://github.com/wa-st/pak-nippon/releases)からダウンロードできます。
インストール方法は日本語Wikiの解説
([『pak・アドオンインストール』](http://japanese.simutrans.com/index.php?pak%A1%A6%A5%A2%A5%C9%A5%AA%A5%F3%A5%A4%A5%F3%A5%B9%A5%C8%A1%BC%A5%EB)や
[『Pakセット』](http://japanese.simutrans.com/index.php?Pak%A5%BB%A5%C3%A5%C8))
などを参考にしてください。

### 3. 追加アドオンのインストール

pak.nipponはPak64用のアドオンの多く（車両、建築物、トンネルなど）をそのまま追加できますが、
way系(線路・道路など）、way-object系(架線など）、bridge系(橋梁)のアドオンは利用できません。


## ライセンス

### pak64に由来するファイルについて

以下のファイルはpak64に由来するファイルです。
利用条件はpak.nippon\license\pak64_licence.txtを参照してください。

- pak.nippon\config\cityrules.tab
- pak.nippon\config\menuconf.tab
- pak.nippon\config\simuconf.tab
- dat\factory\factories.datt
- dat\factory\factory_waste_factories.datt
- dat\factory\power.datt
- dat\factory-food\factories.datt

参照: [SourceForge / simutrans / Code](http://sourceforge.net/p/simutrans/code/HEAD/tree/pak64/)

### その他のファイルについて

waが作成したアドオンについては、MITライセンスに従います。

The MIT License (MIT)

Copyright (c) 2014 wa

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
 
