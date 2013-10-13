SCRIPTS = ../k/ #
MAKEOBJ64 = ..\..\makeobj\makeobjxx.exe pak
MAKEOBJ128 = ..\..\makeobj\makeobjxx.exe pak128
DATT = ruby $(SCRIPTS)datt.rb

########### .pak -> PAKS
PAKS: building.wa.cur-build.pak \
	building.wa.cur-castle.pak \
	building.wa.cur-kofun.pak \
	building.wa.cur-park.pak \
	building.wa.cur-school.pak \
	building.wa.cur-shrine.pak \
	building.wa.cur-substation.pak \
	building.wa.cur-temple.pak \
	building.wa.depot.pak \
	factory.suburbanstores.pak \
	factory.wa.pak \
	ground.Outside.pak \
	ground.wa.pak \
	building.wa.port.pak \
	building.wa.hq.pak \
	building.wa.com.pak \
	building.wa.ind.pak \
	building.wa.res.pak \
	misc.wa.pak \
	pedestrian.wa.pak \
	building.wa.container-yard.pak \
	building.wa.freight-station-misc.pak \
	building.wa.freight-station-roof.pak \
	building.wa.freight-station.pak \
	building.wa.footbridge-1.pak \
	building.wa.platform-0.pak \
	building.wa.platform-1.pak \
	building.wa.platform-2.pak \
	building.wa.platform-3.pak \
	building.wa.platform-4.pak \
	building.wa.platform-d.pak \
	building.wa.platform-f.pak \
	building.wa.townhall.pak \
	tree.wa.pak \
	tunnel.wa.railtrack.pak \
	tunnel.wa.road.pak \
	tunnel.wa.water.pak \
	way.wa.underground-powerline.pak \
	bridge.wa.road.pak \
	building.wa.busstops.pak \
	building.wa.freightstops.pak \
	crossing.wa.rail-road-crossing.pak \
	roadsign.wa.traffic-light.pak \
	way.wa.road.pak \
	way.wa.wall.pak \
	bridge.wa.railtrack.pak \
	way.wa.railtrack.pak \
	way.wa.water.pak \
	bridge.wa.powerline.pak \
	tunnel.wa.powerline.pak \
	way.wa.powerline.pak

########### .dat => .pak
building.wa.cur-build.pak: dat/cur/building.wa.cur-build.dat dat/cur/o1-tile.png dat/cur/o2-tile.png dat/cur/l01-tile.png dat/cur/l02-tile.png dat/cur/l03-tile.png dat/cur/l04-tile.png dat/cur/l05-tile.png dat/cur/l06-tile.png dat/cur/l07-tile.png dat/cur/l08-tile.png dat/cur/l09-tile.png dat/cur/l10-tile.png dat/cur/l11-tile.png dat/cur/l12-tile.png dat/cur/l13-tile.png dat/cur/m1-tile.png dat/cur/m2-tile.png dat/cur/m3-tile.png dat/cur/m4-tile.png dat/cur/h1-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-build.dat
building.wa.cur-castle.pak: dat/cur/building.wa.cur-castle.dat dat/cur/castle-1-tile.png dat/cur/castle-2-tile.png dat/cur/castle-3-tile.png dat/cur/castle-4-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-castle.dat
building.wa.cur-kofun.pak: dat/cur/building.wa.cur-kofun.dat dat/cur/kofun-1-tile.png dat/cur/kofun-2-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-kofun.dat
building.wa.cur-park.pak: dat/cur/building.wa.cur-park.dat dat/cur/park-1-tile.png dat/cur/park-2-tile.png dat/cur/park-3-tile.png dat/cur/park-4-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-park.dat
building.wa.cur-school.pak: dat/cur/building.wa.cur-school.dat dat/cur/school-1-tile.png dat/cur/school-2-tile.png dat/cur/school-3-tile.png dat/cur/school-4-tile.png dat/cur/university-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-school.dat
building.wa.cur-shrine.pak: dat/cur/building.wa.cur-shrine.dat dat/cur/shrine-1-tile.png dat/cur/shrine-2-tile.png dat/cur/shrine-3-tile.png dat/cur/shrine-4-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-shrine.dat
building.wa.cur-substation.pak: dat/cur/building.wa.cur-substation.dat dat/cur/switchyard-tile.png dat/cur/substation-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-substation.dat
building.wa.cur-temple.pak: dat/cur/building.wa.cur-temple.dat dat/cur/temple-1-tile.png dat/cur/temple-2-tile.png dat/cur/temple-3-tile.png dat/cur/temple-4-tile.png dat/cur/temple-5-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-temple.dat
building.wa.depot.pak: dat/depot/building.wa.depot.dat dat/depot/car-depot.png dat/depot/train-depot.png
	$(MAKEOBJ64) $@ dat/depot/building.wa.depot.dat
factory.suburbanstores.pak: dat/factory/factory.suburbanstores.dat dat/factory/nitori.png dat/factory/bookoff.png dat/factory/matsukiyo.png
	$(MAKEOBJ64) $@ dat/factory/factory.suburbanstores.dat
factory.wa.pak: dat/factory/factory.wa.dat dat/factory/steelmill-tile.png dat/factory/ironore-tile.png dat/factory/sand-tile.png dat/factory/stone-tile.png dat/factory/oil-storage-tile.png dat/factory/cementmill-tile.png dat/factory/forestry-tile.png dat/factory/coalmine-tile.png dat/factory/cardealer-tile.png dat/factory/gasstaion-tile.png dat/factory/incinerator-tile.png dat/factory/incinerator-power-tile.png dat/factory/oil-powerplant-tile.png dat/factory/coal-powerplant-tile.png dat/factory/geothermal-powerplant-tile.png dat/factory/solar-powerplant-tile.png dat/factory/refinery-tile.png dat/factory/chemical-plant-tile.png dat/factory/sawmill-tile.png dat/factory/pharmaceutics-tile.png dat/factory/material-storage-tile.png dat/factory/garbage.png dat/factory/printing-tile.png dat/factory/paper-tile.png dat/factory/carfactory-tile.png dat/factory/furniture-tile.png dat/factory/concrete-tile.png dat/factory/windkraftwerk.png
	$(MAKEOBJ64) $@ dat/factory/factory.wa.dat
ground.Outside.pak: dat/ground/ground.Outside.dat dat/ground/water.png
	$(MAKEOBJ64) $@ dat/ground/ground.Outside.dat
ground.wa.pak: dat/ground/ground.wa.dat dat/ground/basement.png dat/ground/slopes.png dat/ground/water.png dat/ground/texture-climate.png dat/ground/texture-slope.png dat/ground/texture-shore.png dat/ground/texture-lightmap.png dat/ground/borders.png dat/ground/marker.png
	$(MAKEOBJ64) $@ dat/ground/ground.wa.dat
building.wa.port.pak: dat/harbor/building.wa.port.dat dat/harbor/port1.png dat/harbor/port2-tile.png dat/harbor/port3a-tile.png dat/harbor/port3b-tile.png dat/harbor/port4-tile.png dat/harbor/port5-tile.png
	$(MAKEOBJ64) $@ dat/harbor/building.wa.port.dat
building.wa.hq.pak: dat/hq/building.wa.hq.dat dat/hq/hq-1-tile.png dat/hq/hq-2-tile.png dat/hq/hq-3-tile.png dat/hq/hq-4-tile.png dat/hq/hq-5-tile.png
	$(MAKEOBJ64) $@ dat/hq/building.wa.hq.dat
building.wa.com.pak: dat/indcomres/building.wa.com.dat dat/indcomres/com-a.png dat/indcomres/com-l1.png dat/indcomres/com-t.png dat/indcomres/com-l2.png dat/indcomres/com-m1.png dat/indcomres/com-m2.png dat/indcomres/com-h1.png dat/indcomres/com-h2.png dat/indcomres/com-parking.png
	$(MAKEOBJ64) $@ dat/indcomres/building.wa.com.dat
building.wa.ind.pak: dat/indcomres/building.wa.ind.dat dat/indcomres/ind-a.png dat/indcomres/ind-l.png dat/indcomres/ind-m1.png dat/indcomres/ind-m2.png dat/indcomres/ind-h1.png dat/indcomres/ind-h2.png dat/indcomres/ind-parking.png
	$(MAKEOBJ64) $@ dat/indcomres/building.wa.ind.dat
building.wa.res.pak: dat/indcomres/building.wa.res.dat dat/indcomres/res-a.png dat/indcomres/res-s1.png dat/indcomres/res-s2.png dat/indcomres/res-h1.png dat/indcomres/res-h2.png dat/indcomres/res-t1.png dat/indcomres/res-t2.png dat/indcomres/res-m.png dat/indcomres/res-h.png dat/indcomres/res-parking.png dat/indcomres/res-empty.png
	$(MAKEOBJ64) $@ dat/indcomres/building.wa.res.dat
misc.wa.pak: dat/misc/misc.wa.dat dat/misc/power-trans.png dat/misc/constructionsite.png dat/misc/tiles.png
	$(MAKEOBJ64) $@ dat/misc/misc.wa.dat
pedestrian.wa.pak: dat/pedestrian/pedestrian.wa.dat dat/pedestrian/pedestrian.png
	$(MAKEOBJ64) $@ dat/pedestrian/pedestrian.wa.dat
building.wa.container-yard.pak: dat/stop-freight-station/building.wa.container-yard.dat dat/stop-freight-station/containers.png dat/stop-freight-station/freight-station-office.png
	$(MAKEOBJ64) $@ dat/stop-freight-station/building.wa.container-yard.dat
building.wa.freight-station-misc.pak: dat/stop-freight-station/building.wa.freight-station-misc.dat dat/stop-freight-station/freight-platform-misc.png
	$(MAKEOBJ64) $@ dat/stop-freight-station/building.wa.freight-station-misc.dat
building.wa.freight-station-roof.pak: dat/stop-freight-station/building.wa.freight-station-roof.dat dat/stop-freight-station/fplatform-2.png dat/stop-freight-station/fplatform-1.png
	$(MAKEOBJ64) $@ dat/stop-freight-station/building.wa.freight-station-roof.dat
building.wa.freight-station.pak: dat/stop-freight-station/building.wa.freight-station.dat dat/stop-freight-station/fplatform-1.png
	$(MAKEOBJ64) $@ dat/stop-freight-station/building.wa.freight-station.dat
building.wa.footbridge-1.pak: dat/stop-platform/building.wa.footbridge-1.dat dat/stop-platform/footbridge-1.png dat/stop-platform/footbridge-1-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.footbridge-1.dat
building.wa.platform-0.pak: dat/stop-platform/building.wa.platform-0.dat dat/stop-platform/platform-0.png dat/stop-platform/platform-0-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.platform-0.dat
building.wa.platform-1.pak: dat/stop-platform/building.wa.platform-1.dat dat/stop-platform/platform-1.png dat/stop-platform/platform-1-winter.png dat/stop-platform/platform-1s.png dat/stop-platform/platform-1s-winter.png dat/stop-platform/platform-1b.png dat/stop-platform/platform-1b-winter.png dat/stop-platform/platform-1u.png dat/stop-platform/platform-1u-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.platform-1.dat
building.wa.platform-2.pak: dat/stop-platform/building.wa.platform-2.dat dat/stop-platform/platform-2.png dat/stop-platform/platform-2-winter.png dat/stop-platform/platform-2s.png dat/stop-platform/platform-2s-winter.png dat/stop-platform/platform-2u.png dat/stop-platform/platform-2u-winter.png dat/stop-platform/platform-2b.png dat/stop-platform/platform-2b-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.platform-2.dat
building.wa.platform-3.pak: dat/stop-platform/building.wa.platform-3.dat dat/stop-platform/platform-3.png dat/stop-platform/platform-3-winter.png dat/stop-platform/platform-3s.png dat/stop-platform/platform-3s-winter.png dat/stop-platform/platform-3u.png dat/stop-platform/platform-3u-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.platform-3.dat
building.wa.platform-4.pak: dat/stop-platform/building.wa.platform-4.dat dat/stop-platform/platform-4.png dat/stop-platform/platform-4-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.platform-4.dat
building.wa.platform-d.pak: dat/stop-platform/building.wa.platform-d.dat dat/stop-platform/platform-1.png dat/stop-platform/platform-1-winter.png dat/stop-platform/platform-2.png dat/stop-platform/platform-2-winter.png dat/stop-platform/platform-3.png dat/stop-platform/platform-3-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.platform-d.dat
building.wa.platform-f.pak: dat/stop-platform/building.wa.platform-f.dat dat/stop-platform/platform-f.png dat/stop-platform/platform-f-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.platform-f.dat
building.wa.townhall.pak: dat/tow/building.wa.townhall.dat dat/tow/tow-1-tile.png dat/tow/tow-2-tile.png dat/tow/tow-3-tile.png dat/tow/tow-4-tile.png dat/tow/tow-5-tile.png dat/tow/tow-6-tile.png dat/tow/tow-7-tile.png dat/tow/tow-8-tile.png dat/tow/tow-9-tile.png
	$(MAKEOBJ64) $@ dat/tow/building.wa.townhall.dat
tree.wa.pak: dat/tree/tree.wa.dat dat/tree/trees.png
	$(MAKEOBJ64) $@ dat/tree/tree.wa.dat
tunnel.wa.railtrack.pak: dat/tunnel/tunnel.wa.railtrack.dat dat/tunnel/tunnel-c1.png dat/tunnel/tunnel-1.png dat/tunnel/tunnel-2.png dat/tunnel/stone-tunnel.png
	$(MAKEOBJ64) $@ dat/tunnel/tunnel.wa.railtrack.dat
tunnel.wa.road.pak: dat/tunnel/tunnel.wa.road.dat dat/tunnel/tunnel-cr1.png dat/tunnel/tunnel-road1.png dat/tunnel/tunnel-road2.png dat/tunnel/stone-tunnel.png
	$(MAKEOBJ64) $@ dat/tunnel/tunnel.wa.road.dat
tunnel.wa.water.pak: dat/tunnel/tunnel.wa.water.dat dat/tunnel/tunnel-water.png dat/tunnel/stone-tunnel.png
	$(MAKEOBJ64) $@ dat/tunnel/tunnel.wa.water.dat
way.wa.underground-powerline.pak: dat/way-powerline/way.wa.underground-powerline.dat dat/way-powerline/powerline-ug.png
	$(MAKEOBJ64) $@ dat/way-powerline/way.wa.underground-powerline.dat
bridge.wa.road.pak: dat/way-road/bridge.wa.road.dat dat/way-road/road-100n-bridge.png dat/way-road/road-100r-bridge.png dat/way-road/road-bridge-3.png dat/way-road/road-bridge-3-winter.png dat/way-road/road-bridge-4.png dat/way-road/road-bridge-4-winter.png dat/way-road/road-bridge-5.png dat/way-road/road-bridge-5-winter.png
	$(MAKEOBJ64) $@ dat/way-road/bridge.wa.road.dat
building.wa.busstops.pak: dat/way-road/building.wa.busstops.dat dat/way-road/stops.png dat/way-road/stops-winter.png
	$(MAKEOBJ64) $@ dat/way-road/building.wa.busstops.dat
building.wa.freightstops.pak: dat/way-road/building.wa.freightstops.dat dat/way-road/freightstop-1.png dat/way-road/freightstop-1d.png dat/way-road/freightstop-2.png dat/way-road/freightstop-2-winter.png dat/way-road/freightstop-2d.png dat/way-road/freightstop-2d-winter.png
	$(MAKEOBJ64) $@ dat/way-road/building.wa.freightstops.dat
crossing.wa.rail-road-crossing.pak: dat/way-road/crossing.wa.rail-road-crossing.dat dat/way-road/crossing.png
	$(MAKEOBJ64) $@ dat/way-road/crossing.wa.rail-road-crossing.dat
roadsign.wa.traffic-light.pak: dat/way-road/roadsign.wa.traffic-light.dat dat/way-road/traffic-light.png
	$(MAKEOBJ64) $@ dat/way-road/roadsign.wa.traffic-light.dat
way.wa.road.pak: dat/way-road/way.wa.road.dat dat/way-road/cityroad.png dat/way-road/cityroad-winter.png dat/way-road/road-40n.png dat/way-road/road-40n-winter.png dat/way-road/road-70r.png dat/way-road/road-70r-winter.png dat/way-road/road-100n.png dat/way-road/road-100n-winter.png dat/way-road/road-100n-elv.png dat/way-road/road-100r.png dat/way-road/road-100r-winter.png dat/way-road/road-100r-elv.png dat/way-road/dart-1.png dat/way-road/dart-1-winter.png dat/way-road/dart-2.png dat/way-road/dart-2-winter.png
	$(MAKEOBJ64) $@ dat/way-road/way.wa.road.dat
way.wa.wall.pak: dat/way-road/way.wa.wall.dat dat/way-road/wall.png dat/way-road/wall-winter.png
	$(MAKEOBJ64) $@ dat/way-road/way.wa.wall.dat
bridge.wa.railtrack.pak: dat/way-track/bridge.wa.railtrack.dat dat/way-track/bridge-1.png dat/way-track/bridge-1-winter.png dat/way-track/bridge-2.png dat/way-track/bridge-2-winter.png dat/way-track/bridge-3.png dat/way-track/bridge-3-winter.png dat/way-track/bridge-4.png dat/way-track/bridge-4-winter.png dat/way-track/bridge-5.png dat/way-track/bridge-5-winter.png
	$(MAKEOBJ64) $@ dat/way-track/bridge.wa.railtrack.dat
way.wa.railtrack.pak: dat/way-track/way.wa.railtrack.dat dat/way-track/track-1.png dat/way-track/track-1-winter.png dat/way-track/track-2.png dat/way-track/track-2-winter.png dat/way-track/track-3.png dat/way-track/track-3-winter.png dat/way-track/track-4.png dat/way-track/track-4-winter.png dat/way-track/track-3-elv.png dat/way-track/track-3-elv-winter.png dat/way-track/track-4-elv.png dat/way-track/track-4-elv-winter.png
	$(MAKEOBJ64) $@ dat/way-track/way.wa.railtrack.dat
way.wa.water.pak: dat/way-water/way.wa.water.dat dat/way-water/waterway-1.png dat/way-water/waterway-2.png dat/way-water/waterway-3.png dat/way-water/waterway-4.png
	$(MAKEOBJ64) $@ dat/way-water/way.wa.water.dat
bridge.wa.powerline.pak: dat/way-powerline/bridge.wa.powerline.dat128 dat/way-powerline/powerline2hv.png dat/way-powerline/powerline2red.png dat/way-powerline/powerline4.png
	$(MAKEOBJ64) $@ dat/way-powerline/bridge.wa.powerline.dat128
tunnel.wa.powerline.pak: dat/way-powerline/tunnel.wa.powerline.dat128 dat/way-powerline/powerline2hv.png
	$(MAKEOBJ64) $@ dat/way-powerline/tunnel.wa.powerline.dat128
way.wa.powerline.pak: dat/way-powerline/way.wa.powerline.dat128 dat/way-powerline/powerline1a.png dat/way-powerline/powerline1b.png dat/way-powerline/powerline2.png dat/way-powerline/powerline2hv.png dat/way-powerline/powerline4.png
	$(MAKEOBJ64) $@ dat/way-powerline/way.wa.powerline.dat128

########### .datt => .dat
dat/cur/building.wa.cur-build.dat: dat/cur/building.wa.cur-build.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-castle.dat: dat/cur/building.wa.cur-castle.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-kofun.dat: dat/cur/building.wa.cur-kofun.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-park.dat: dat/cur/building.wa.cur-park.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-school.dat: dat/cur/building.wa.cur-school.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-shrine.dat: dat/cur/building.wa.cur-shrine.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-substation.dat: dat/cur/building.wa.cur-substation.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-temple.dat: dat/cur/building.wa.cur-temple.datt
	$(DATT) $** > $@
dat/depot/building.wa.depot.dat: dat/depot/building.wa.depot.datt
	$(DATT) $** > $@
dat/factory/factory.suburbanstores.dat: dat/factory/factory.suburbanstores.datt
	$(DATT) $** > $@
dat/factory/factory.wa.dat: dat/factory/factory.wa.datt
	$(DATT) $** > $@
dat/harbor/building.wa.port.dat: dat/harbor/building.wa.port.datt
	$(DATT) $** > $@
dat/hq/building.wa.hq.dat: dat/hq/building.wa.hq.datt
	$(DATT) $** > $@
dat/indcomres/building.wa.com.dat: dat/indcomres/building.wa.com.datt
	$(DATT) $** > $@
dat/indcomres/building.wa.ind.dat: dat/indcomres/building.wa.ind.datt
	$(DATT) $** > $@
dat/indcomres/building.wa.res.dat: dat/indcomres/building.wa.res.datt
	$(DATT) $** > $@
dat/pedestrian/pedestrian.wa.dat: dat/pedestrian/pedestrian.wa.datt
	$(DATT) $** > $@
dat/tow/building.wa.townhall.dat: dat/tow/building.wa.townhall.datt
	$(DATT) $** > $@
dat/tunnel/tunnel.wa.railtrack.dat: dat/tunnel/tunnel.wa.railtrack.datt
	$(DATT) $** > $@
dat/tunnel/tunnel.wa.road.dat: dat/tunnel/tunnel.wa.road.datt
	$(DATT) $** > $@
dat/tunnel/tunnel.wa.water.dat: dat/tunnel/tunnel.wa.water.datt
	$(DATT) $** > $@
dat/way-road/bridge.wa.road.dat: dat/way-road/bridge.wa.road.datt
	$(DATT) $** > $@
dat/way-road/way.wa.road.dat: dat/way-road/way.wa.road.datt
	$(DATT) $** > $@
dat/way-track/bridge.wa.railtrack.dat: dat/way-track/bridge.wa.railtrack.datt
	$(DATT) $** > $@
dat/way-track/way.wa.railtrack.dat: dat/way-track/way.wa.railtrack.datt
	$(DATT) $** > $@
dat/way-water/way.wa.water.dat: dat/way-water/way.wa.water.datt
	$(DATT) $** > $@
dat/way-powerline/bridge.wa.powerline.dat128: dat/way-powerline/bridge.wa.powerline.datt128
	$(DATT) $** > $@
dat/way-powerline/tunnel.wa.powerline.dat128: dat/way-powerline/tunnel.wa.powerline.datt128
	$(DATT) $** > $@
dat/way-powerline/way.wa.powerline.dat128: dat/way-powerline/way.wa.powerline.datt128
	$(DATT) $** > $@