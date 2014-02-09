SCRIPTS = ..\k\ 
RELEASE = .\pak.nippon\ 
MAKEOBJ64 = ..\..\makeobj\makeobjxx.exe pak
MAKEOBJ128 = ..\..\makeobj\makeobjxx.exe pak128
DATT = ruby $(SCRIPTS)datt.rb

########### .pak -> PAKS
PAKS: $(RELEASE)building.wa.cur-build.pak \
	$(RELEASE)building.wa.cur-castle.pak \
	$(RELEASE)building.wa.cur-church.pak \
	$(RELEASE)building.wa.cur-hospital.pak \
	$(RELEASE)building.wa.cur-infrastructure.pak \
	$(RELEASE)building.wa.cur-kofun.pak \
	$(RELEASE)building.wa.cur-park.pak \
	$(RELEASE)building.wa.cur-public-facility.pak \
	$(RELEASE)building.wa.cur-school.pak \
	$(RELEASE)building.wa.cur-shrine.pak \
	$(RELEASE)building.wa.cur-sport.pak \
	$(RELEASE)building.wa.cur-temple.pak \
	$(RELEASE)building.wa.depot.pak \
	$(RELEASE)factory.suburbanstores.pak \
	$(RELEASE)factory.wa.pak \
	$(RELEASE)ground.Outside.pak \
	$(RELEASE)ground.wa.pak \
	$(RELEASE)building.wa.port.pak \
	$(RELEASE)building.wa.hq.pak \
	$(RELEASE)building.wa.com.pak \
	$(RELEASE)building.wa.ind.pak \
	$(RELEASE)building.wa.res.pak \
	$(RELEASE)misc.wa.pak \
	$(RELEASE)pedestrian.wa.pak \
	$(RELEASE)roadsign.monorail-signals.pak \
	$(RELEASE)roadsign.railsignals.pak \
	$(RELEASE)roadsign.wa.roadsignals.pak \
	$(RELEASE)building.wa.airext.pak \
	$(RELEASE)building.wa.airstop.pak \
	$(RELEASE)building.wa.freight-station-misc.pak \
	$(RELEASE)building.wa.freight-station-roof.pak \
	$(RELEASE)building.wa.freight-station.pak \
	$(RELEASE)building.wa.miscext-containeryard.pak \
	$(RELEASE)building.wa.miscext-tank.pak \
	$(RELEASE)building.wa.footbridge-1.pak \
	$(RELEASE)building.wa.platform-0.pak \
	$(RELEASE)building.wa.platform-1.pak \
	$(RELEASE)building.wa.platform-2.pak \
	$(RELEASE)building.wa.platform-3.pak \
	$(RELEASE)building.wa.platform-4.pak \
	$(RELEASE)building.wa.platform-d.pak \
	$(RELEASE)building.wa.platform-f.pak \
	$(RELEASE)building.wa.miscext-post-office.pak \
	$(RELEASE)building.wa.roadstop-freight.pak \
	$(RELEASE)building.wa.roadstop.pak \
	$(RELEASE)building.wa.railext-localstation.pak \
	$(RELEASE)building.wa.townhall.pak \
	$(RELEASE)tree.wa.pak \
	$(RELEASE)tunnel.wa.railtrack.pak \
	$(RELEASE)tunnel.wa.road.pak \
	$(RELEASE)tunnel.wa.water.pak \
	$(RELEASE)way.wa.air.pak \
	$(RELEASE)way.wa.misc.pak \
	$(RELEASE)way.wa.underground-powerline.pak \
	$(RELEASE)bridge.wa.road.pak \
	$(RELEASE)crossing.wa.rail-road-crossing.pak \
	$(RELEASE)way.wa.road.pak \
	$(RELEASE)bridge.wa.railtrack.pak \
	$(RELEASE)way-object.wa.catenary.pak \
	$(RELEASE)way.wa.railtrack.pak \
	$(RELEASE)way.wa.tramtrack.pak \
	$(RELEASE)way.wa.water.pak \
	$(RELEASE)bridge.wa.powerline.pak \
	$(RELEASE)tunnel.wa.powerline.pak \
	$(RELEASE)way.wa.powerline.pak

########### .dat => .pak
$(RELEASE)building.wa.cur-build.pak: dat/cur/building.wa.cur-build.dat dat/cur/l13-tile.png dat/cur/m2-tile.png dat/cur/m3-tile.png dat/cur/m4-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-build.dat
$(RELEASE)building.wa.cur-castle.pak: dat/cur/building.wa.cur-castle.dat dat/cur/castle-1-tile.png dat/cur/castle-2-tile.png dat/cur/castle-3-tile.png dat/cur/castle-4-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-castle.dat
$(RELEASE)building.wa.cur-church.pak: dat/cur/building.wa.cur-church.dat dat/cur/church-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-church.dat
$(RELEASE)building.wa.cur-hospital.pak: dat/cur/building.wa.cur-hospital.dat dat/cur/hospital-1-tile.png dat/cur/hospital-2-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-hospital.dat
$(RELEASE)building.wa.cur-infrastructure.pak: dat/cur/building.wa.cur-infrastructure.dat dat/cur/switchyard-tile.png dat/cur/substation-tile.png dat/cur/lighthouse.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-infrastructure.dat
$(RELEASE)building.wa.cur-kofun.pak: dat/cur/building.wa.cur-kofun.dat dat/cur/kofun-1-tile.png dat/cur/kofun-2-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-kofun.dat
$(RELEASE)building.wa.cur-park.pak: dat/cur/building.wa.cur-park.dat dat/cur/park-1-tile.png dat/cur/park-2-tile.png dat/cur/park-3-tile.png dat/cur/park-4-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-park.dat
$(RELEASE)building.wa.cur-public-facility.pak: dat/cur/building.wa.cur-public-facility.dat dat/cur/community-center-tile.png dat/cur/policestation-tile.png dat/cur/firestation-tile.png dat/cur/library-tile.png dat/cur/historical-museum-tile.png dat/cur/health-and-welfare-center-tile.png dat/cur/tax-office-tile.png dat/cur/employment-service-center-tile.png dat/cur/museum-tile.png dat/cur/civic-hall-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-public-facility.dat
$(RELEASE)building.wa.cur-school.pak: dat/cur/building.wa.cur-school.dat dat/cur/school-1-tile.png dat/cur/school-2-tile.png dat/cur/school-3-tile.png dat/cur/school-4-tile.png dat/cur/university-tile.png dat/cur/kindergarten-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-school.dat
$(RELEASE)building.wa.cur-shrine.pak: dat/cur/building.wa.cur-shrine.dat dat/cur/shrine-1-tile.png dat/cur/shrine-2-tile.png dat/cur/shrine-3-tile.png dat/cur/shrine-4-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-shrine.dat
$(RELEASE)building.wa.cur-sport.pak: dat/cur/building.wa.cur-sport.dat dat/cur/tenniscourt-tile.png dat/cur/baseballfield-tile.png dat/cur/soccer-stadium-tile.png dat/cur/gymnasium-tile.png dat/cur/swimming-pool-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-sport.dat
$(RELEASE)building.wa.cur-temple.pak: dat/cur/building.wa.cur-temple.dat dat/cur/temple-1-tile.png dat/cur/temple-2-tile.png dat/cur/temple-3-tile.png dat/cur/temple-4-tile.png dat/cur/temple-5-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.wa.cur-temple.dat
$(RELEASE)building.wa.depot.pak: dat/depot/building.wa.depot.dat dat/depot/car-depot.png dat/depot/train-depot.png dat/depot/ship-depot.png dat/depot/tram-depot.png dat/depot/air-depot.png
	$(MAKEOBJ64) $@ dat/depot/building.wa.depot.dat
$(RELEASE)factory.suburbanstores.pak: dat/factory/factory.suburbanstores.dat dat/factory/nitori.png dat/factory/bookoff.png dat/factory/matsukiyo.png
	$(MAKEOBJ64) $@ dat/factory/factory.suburbanstores.dat
$(RELEASE)factory.wa.pak: dat/factory/factory.wa.dat dat/factory/steelmill-tile.png dat/factory/ironore-tile.png dat/factory/sand-tile.png dat/factory/stone-tile.png dat/factory/oil-storage-tile.png dat/factory/cementmill-tile.png dat/factory/forestry-tile.png dat/factory/coalmine-tile.png dat/factory/cardealer-tile.png dat/factory/gasstaion-tile.png dat/factory/incinerator-tile.png dat/factory/incinerator-power-tile.png dat/factory/oil-powerplant-tile.png dat/factory/coal-powerplant-tile.png dat/factory/geothermal-powerplant-tile.png dat/factory/solar-powerplant-tile.png dat/factory/refinery-tile.png dat/factory/chemical-plant-tile.png dat/factory/sawmill-tile.png dat/factory/pharmaceutics-tile.png dat/factory/material-storage-tile.png dat/factory/garbage.png dat/factory/printing-tile.png dat/factory/paper-tile.png dat/factory/carfactory-tile.png dat/factory/furniture-tile.png dat/factory/concrete-tile.png dat/factory/windkraftwerk.png
	$(MAKEOBJ64) $@ dat/factory/factory.wa.dat
$(RELEASE)ground.Outside.pak: dat/ground/ground.Outside.dat dat/ground/water.png
	$(MAKEOBJ64) $@ dat/ground/ground.Outside.dat
$(RELEASE)ground.wa.pak: dat/ground/ground.wa.dat dat/ground/basement.png dat/ground/slopes.png dat/ground/water.png dat/ground/texture-climate.png dat/ground/texture-slope.png dat/ground/texture-shore.png dat/ground/texture-lightmap.png dat/ground/borders.png dat/ground/marker.png dat/ground/fence.png
	$(MAKEOBJ64) $@ dat/ground/ground.wa.dat
$(RELEASE)building.wa.port.pak: dat/harbor/building.wa.port.dat dat/harbor/port1.png dat/harbor/port2-tile.png dat/harbor/port3a-tile.png dat/harbor/port3b-tile.png dat/harbor/port4-tile.png dat/harbor/port5-tile.png dat/harbor/canal-stop.png
	$(MAKEOBJ64) $@ dat/harbor/building.wa.port.dat
$(RELEASE)building.wa.hq.pak: dat/hq/building.wa.hq.dat dat/hq/hq-1-tile.png dat/hq/hq-2-tile.png dat/hq/hq-3-tile.png dat/hq/hq-4-tile.png dat/hq/hq-5-tile.png
	$(MAKEOBJ64) $@ dat/hq/building.wa.hq.dat
$(RELEASE)building.wa.com.pak: dat/indcomres/building.wa.com.dat dat/indcomres/com-a.png dat/indcomres/com-l1.png dat/indcomres/com-t.png dat/indcomres/com-l2.png dat/indcomres/com-s.png dat/indcomres/com-m1.png dat/indcomres/com-m2.png dat/indcomres/com-h1.png dat/indcomres/com-h2.png dat/indcomres/com-parking.png
	$(MAKEOBJ64) $@ dat/indcomres/building.wa.com.dat
$(RELEASE)building.wa.ind.pak: dat/indcomres/building.wa.ind.dat dat/indcomres/ind-a.png dat/indcomres/ind-l.png dat/indcomres/ind-m1.png dat/indcomres/ind-m2.png dat/indcomres/ind-h1.png dat/indcomres/ind-h2.png dat/indcomres/ind-parking.png
	$(MAKEOBJ64) $@ dat/indcomres/building.wa.ind.dat
$(RELEASE)building.wa.res.pak: dat/indcomres/building.wa.res.dat dat/indcomres/res-a.png dat/indcomres/res-s1.png dat/indcomres/res-s2.png dat/indcomres/res-h1.png dat/indcomres/res-h2.png dat/indcomres/res-t1.png dat/indcomres/res-t2.png dat/indcomres/res-p.png dat/indcomres/res-m.png dat/indcomres/res-h.png dat/indcomres/res-parking.png dat/indcomres/res-empty.png
	$(MAKEOBJ64) $@ dat/indcomres/building.wa.res.dat
$(RELEASE)misc.wa.pak: dat/misc/misc.wa.dat dat/misc/power-trans.png dat/misc/constructionsite.png dat/misc/tiles.png
	$(MAKEOBJ64) $@ dat/misc/misc.wa.dat
$(RELEASE)pedestrian.wa.pak: dat/pedestrian/pedestrian.wa.dat dat/pedestrian/pedestrian.png
	$(MAKEOBJ64) $@ dat/pedestrian/pedestrian.wa.dat
$(RELEASE)roadsign.monorail-signals.pak: dat/signal/roadsign.monorail-signals.dat dat/signal/Signals.png
	$(MAKEOBJ64) $@ dat/signal/roadsign.monorail-signals.dat
$(RELEASE)roadsign.railsignals.pak: dat/signal/roadsign.railsignals.dat dat/signal/Signals.png
	$(MAKEOBJ64) $@ dat/signal/roadsign.railsignals.dat
$(RELEASE)roadsign.wa.roadsignals.pak: dat/signal/roadsign.wa.roadsignals.dat dat/signal/traffic-light.png
	$(MAKEOBJ64) $@ dat/signal/roadsign.wa.roadsignals.dat
$(RELEASE)building.wa.airext.pak: dat/stop-air/building.wa.airext.dat dat/stop-air/airstop.png dat/stop-air/airext-terminal.png
	$(MAKEOBJ64) $@ dat/stop-air/building.wa.airext.dat
$(RELEASE)building.wa.airstop.pak: dat/stop-air/building.wa.airstop.dat dat/stop-air/airstop.png
	$(MAKEOBJ64) $@ dat/stop-air/building.wa.airstop.dat
$(RELEASE)building.wa.freight-station-misc.pak: dat/stop-freight-station/building.wa.freight-station-misc.dat dat/stop-freight-station/freight-platform-misc.png
	$(MAKEOBJ64) $@ dat/stop-freight-station/building.wa.freight-station-misc.dat
$(RELEASE)building.wa.freight-station-roof.pak: dat/stop-freight-station/building.wa.freight-station-roof.dat dat/stop-freight-station/fplatform-2.png dat/stop-freight-station/fplatform-1.png
	$(MAKEOBJ64) $@ dat/stop-freight-station/building.wa.freight-station-roof.dat
$(RELEASE)building.wa.freight-station.pak: dat/stop-freight-station/building.wa.freight-station.dat dat/stop-freight-station/fplatform-1.png dat/stop-freight-station/freight-platform-3.png
	$(MAKEOBJ64) $@ dat/stop-freight-station/building.wa.freight-station.dat
$(RELEASE)building.wa.miscext-containeryard.pak: dat/stop-freight-station/building.wa.miscext-containeryard.dat dat/stop-freight-station/containeryard.png dat/stop-freight-station/freight-station-office.png
	$(MAKEOBJ64) $@ dat/stop-freight-station/building.wa.miscext-containeryard.dat
$(RELEASE)building.wa.miscext-tank.pak: dat/stop-freight-station/building.wa.miscext-tank.dat dat/stop-freight-station/tanks.png
	$(MAKEOBJ64) $@ dat/stop-freight-station/building.wa.miscext-tank.dat
$(RELEASE)building.wa.footbridge-1.pak: dat/stop-platform/building.wa.footbridge-1.dat dat/stop-platform/footbridge-1.png dat/stop-platform/footbridge-1-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.footbridge-1.dat
$(RELEASE)building.wa.platform-0.pak: dat/stop-platform/building.wa.platform-0.dat dat/stop-platform/platform-0.png dat/stop-platform/platform-0-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.platform-0.dat
$(RELEASE)building.wa.platform-1.pak: dat/stop-platform/building.wa.platform-1.dat dat/stop-platform/platform-1.png dat/stop-platform/platform-1-winter.png dat/stop-platform/platform-1s.png dat/stop-platform/platform-1s-winter.png dat/stop-platform/platform-1b.png dat/stop-platform/platform-1b-winter.png dat/stop-platform/platform-1u.png dat/stop-platform/platform-1u-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.platform-1.dat
$(RELEASE)building.wa.platform-2.pak: dat/stop-platform/building.wa.platform-2.dat dat/stop-platform/platform-2.png dat/stop-platform/platform-2-winter.png dat/stop-platform/platform-2s.png dat/stop-platform/platform-2s-winter.png dat/stop-platform/platform-2u.png dat/stop-platform/platform-2u-winter.png dat/stop-platform/platform-2b.png dat/stop-platform/platform-2b-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.platform-2.dat
$(RELEASE)building.wa.platform-3.pak: dat/stop-platform/building.wa.platform-3.dat dat/stop-platform/platform-3.png dat/stop-platform/platform-3-winter.png dat/stop-platform/platform-3s.png dat/stop-platform/platform-3s-winter.png dat/stop-platform/platform-3u.png dat/stop-platform/platform-3u-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.platform-3.dat
$(RELEASE)building.wa.platform-4.pak: dat/stop-platform/building.wa.platform-4.dat dat/stop-platform/platform-4.png dat/stop-platform/platform-4-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.platform-4.dat
$(RELEASE)building.wa.platform-d.pak: dat/stop-platform/building.wa.platform-d.dat dat/stop-platform/platform-1.png dat/stop-platform/platform-1-winter.png dat/stop-platform/platform-2.png dat/stop-platform/platform-2-winter.png dat/stop-platform/platform-3.png dat/stop-platform/platform-3-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.platform-d.dat
$(RELEASE)building.wa.platform-f.pak: dat/stop-platform/building.wa.platform-f.dat dat/stop-platform/platform-f.png dat/stop-platform/platform-f-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.wa.platform-f.dat
$(RELEASE)building.wa.miscext-post-office.pak: dat/stop-post/building.wa.miscext-post-office.dat dat/stop-post/post-office.png
	$(MAKEOBJ64) $@ dat/stop-post/building.wa.miscext-post-office.dat
$(RELEASE)building.wa.roadstop-freight.pak: dat/stop-road/building.wa.roadstop-freight.dat dat/stop-road/freightstop-1.png dat/stop-road/freightstop-1d.png dat/stop-road/freightstop-2.png dat/stop-road/freightstop-2-winter.png dat/stop-road/freightstop-2d.png dat/stop-road/freightstop-2d-winter.png dat/stop-road/carstop.png
	$(MAKEOBJ64) $@ dat/stop-road/building.wa.roadstop-freight.dat
$(RELEASE)building.wa.roadstop.pak: dat/stop-road/building.wa.roadstop.dat dat/stop-road/stops.png dat/stop-road/stops-winter.png
	$(MAKEOBJ64) $@ dat/stop-road/building.wa.roadstop.dat
$(RELEASE)building.wa.railext-localstation.pak: dat/stop-station/building.wa.railext-localstation.dat dat/stop-station/local-station.png
	$(MAKEOBJ64) $@ dat/stop-station/building.wa.railext-localstation.dat
$(RELEASE)building.wa.townhall.pak: dat/tow/building.wa.townhall.dat dat/tow/tow-1-tile.png dat/tow/tow-2-tile.png dat/tow/tow-3-tile.png dat/tow/tow-4-tile.png dat/tow/tow-5-tile.png dat/tow/tow-6-tile.png dat/tow/tow-7-tile.png dat/tow/tow-8-tile.png dat/tow/tow-9-tile.png
	$(MAKEOBJ64) $@ dat/tow/building.wa.townhall.dat
$(RELEASE)tree.wa.pak: dat/tree/tree.wa.dat dat/tree/trees.png
	$(MAKEOBJ64) $@ dat/tree/tree.wa.dat
$(RELEASE)tunnel.wa.railtrack.pak: dat/tunnel/tunnel.wa.railtrack.dat dat/tunnel/tunnel-c1.png dat/tunnel/tunnel-1.png dat/tunnel/tunnel-2.png dat/tunnel/stone-tunnel.png
	$(MAKEOBJ64) $@ dat/tunnel/tunnel.wa.railtrack.dat
$(RELEASE)tunnel.wa.road.pak: dat/tunnel/tunnel.wa.road.dat dat/tunnel/tunnel-cr1.png dat/tunnel/tunnel-road1.png dat/tunnel/tunnel-road2.png dat/tunnel/stone-tunnel.png
	$(MAKEOBJ64) $@ dat/tunnel/tunnel.wa.road.dat
$(RELEASE)tunnel.wa.water.pak: dat/tunnel/tunnel.wa.water.dat dat/tunnel/tunnel-water.png dat/tunnel/stone-tunnel.png
	$(MAKEOBJ64) $@ dat/tunnel/tunnel.wa.water.dat
$(RELEASE)way.wa.air.pak: dat/way-air/way.wa.air.dat dat/way-air/taxiway-1.png dat/way-air/apron-1.png dat/way-air/runway-1.png
	$(MAKEOBJ64) $@ dat/way-air/way.wa.air.dat
$(RELEASE)way.wa.misc.pak: dat/way-misc/way.wa.misc.dat dat/way-misc/miscway-1.png dat/way-misc/miscway-1-winter.png dat/way-misc/miscway-2.png dat/way-misc/miscway-2-winter.png dat/way-misc/miscway-3.png dat/way-misc/miscway-3-winter.png dat/way-misc/miscway-4.png dat/way-misc/miscway-4-winter.png dat/way-misc/miscway-5.png dat/way-misc/miscway-5-winter.png dat/way-misc/wall.png dat/way-misc/wall-winter.png
	$(MAKEOBJ64) $@ dat/way-misc/way.wa.misc.dat
$(RELEASE)way.wa.underground-powerline.pak: dat/way-powerline/way.wa.underground-powerline.dat dat/way-powerline/powerline-ug.png
	$(MAKEOBJ64) $@ dat/way-powerline/way.wa.underground-powerline.dat
$(RELEASE)bridge.wa.road.pak: dat/way-road/bridge.wa.road.dat dat/way-road/road-100n-bridge.png dat/way-road/road-100r-bridge.png dat/way-road/road-bridge-3.png dat/way-road/road-bridge-3-winter.png dat/way-road/road-bridge-4.png dat/way-road/road-bridge-4-winter.png dat/way-road/road-bridge-5.png dat/way-road/road-bridge-5-winter.png
	$(MAKEOBJ64) $@ dat/way-road/bridge.wa.road.dat
$(RELEASE)crossing.wa.rail-road-crossing.pak: dat/way-road/crossing.wa.rail-road-crossing.dat dat/way-road/crossing.png dat/way-road/crossing-2.png
	$(MAKEOBJ64) $@ dat/way-road/crossing.wa.rail-road-crossing.dat
$(RELEASE)way.wa.road.pak: dat/way-road/way.wa.road.dat dat/way-road/cityroad.png dat/way-road/cityroad-winter.png dat/way-road/road-40n.png dat/way-road/road-40n-winter.png dat/way-road/road-70r.png dat/way-road/road-70r-winter.png dat/way-road/road-100n.png dat/way-road/road-100n-winter.png dat/way-road/road-100n-elv.png dat/way-road/road-100r.png dat/way-road/road-100r-winter.png dat/way-road/road-100r-elv.png dat/way-road/dart-1.png dat/way-road/dart-1-winter.png dat/way-road/dart-2.png dat/way-road/dart-2-winter.png
	$(MAKEOBJ64) $@ dat/way-road/way.wa.road.dat
$(RELEASE)bridge.wa.railtrack.pak: dat/way-track/bridge.wa.railtrack.dat dat/way-track/bridge-1.png dat/way-track/bridge-1-winter.png dat/way-track/bridge-2.png dat/way-track/bridge-2-winter.png dat/way-track/bridge-3.png dat/way-track/bridge-3-winter.png dat/way-track/bridge-4.png dat/way-track/bridge-4-winter.png dat/way-track/bridge-5.png dat/way-track/bridge-5-winter.png
	$(MAKEOBJ64) $@ dat/way-track/bridge.wa.railtrack.dat
$(RELEASE)way-object.wa.catenary.pak: dat/way-track/way-object.wa.catenary.dat dat/way-track/catenary-1.png dat/way-track/catenary-2.png
	$(MAKEOBJ64) $@ dat/way-track/way-object.wa.catenary.dat
$(RELEASE)way.wa.railtrack.pak: dat/way-track/way.wa.railtrack.dat dat/way-track/track-1.png dat/way-track/track-1-winter.png dat/way-track/track-2.png dat/way-track/track-2-winter.png dat/way-track/track-3.png dat/way-track/track-3-winter.png dat/way-track/track-4.png dat/way-track/track-4-winter.png dat/way-track/track-3-elv.png dat/way-track/track-3-elv-winter.png dat/way-track/track-4-elv.png dat/way-track/track-4-elv-winter.png
	$(MAKEOBJ64) $@ dat/way-track/way.wa.railtrack.dat
$(RELEASE)way.wa.tramtrack.pak: dat/way-track/way.wa.tramtrack.dat dat/way-track/tramtrack-1.png dat/way-track/tramtrack-2.png
	$(MAKEOBJ64) $@ dat/way-track/way.wa.tramtrack.dat
$(RELEASE)way.wa.water.pak: dat/way-water/way.wa.water.dat dat/way-water/waterway-1.png dat/way-water/waterway-2.png dat/way-water/waterway-3.png dat/way-water/waterway-4.png
	$(MAKEOBJ64) $@ dat/way-water/way.wa.water.dat
$(RELEASE)bridge.wa.powerline.pak: dat/way-powerline/bridge.wa.powerline.dat128 dat/way-powerline/powerline-2hv.png dat/way-powerline/powerline-2red.png dat/way-powerline/powerline-4.png
	$(MAKEOBJ128) $@ dat/way-powerline/bridge.wa.powerline.dat128
$(RELEASE)tunnel.wa.powerline.pak: dat/way-powerline/tunnel.wa.powerline.dat128 dat/way-powerline/powerline-2hv.png
	$(MAKEOBJ128) $@ dat/way-powerline/tunnel.wa.powerline.dat128
$(RELEASE)way.wa.powerline.pak: dat/way-powerline/way.wa.powerline.dat128 dat/way-powerline/powerline-1a.png dat/way-powerline/powerline-1b.png dat/way-powerline/powerline-2.png dat/way-powerline/powerline-2hv.png dat/way-powerline/powerline-4.png
	$(MAKEOBJ128) $@ dat/way-powerline/way.wa.powerline.dat128

########### .datt => .dat
dat/cur/building.wa.cur-build.dat: dat/cur/building.wa.cur-build.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-castle.dat: dat/cur/building.wa.cur-castle.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-church.dat: dat/cur/building.wa.cur-church.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-hospital.dat: dat/cur/building.wa.cur-hospital.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-infrastructure.dat: dat/cur/building.wa.cur-infrastructure.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-kofun.dat: dat/cur/building.wa.cur-kofun.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-park.dat: dat/cur/building.wa.cur-park.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-public-facility.dat: dat/cur/building.wa.cur-public-facility.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-school.dat: dat/cur/building.wa.cur-school.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-shrine.dat: dat/cur/building.wa.cur-shrine.datt
	$(DATT) $** > $@
dat/cur/building.wa.cur-sport.dat: dat/cur/building.wa.cur-sport.datt
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
dat/stop-air/building.wa.airext.dat: dat/stop-air/building.wa.airext.datt
	$(DATT) $** > $@
dat/stop-air/building.wa.airstop.dat: dat/stop-air/building.wa.airstop.datt
	$(DATT) $** > $@
dat/stop-freight-station/building.wa.miscext-containeryard.dat: dat/stop-freight-station/building.wa.miscext-containeryard.datt
	$(DATT) $** > $@
dat/stop-freight-station/building.wa.miscext-tank.dat: dat/stop-freight-station/building.wa.miscext-tank.datt
	$(DATT) $** > $@
dat/stop-post/building.wa.miscext-post-office.dat: dat/stop-post/building.wa.miscext-post-office.datt
	$(DATT) $** > $@
dat/stop-station/building.wa.railext-localstation.dat: dat/stop-station/building.wa.railext-localstation.datt
	$(DATT) $** > $@
dat/tow/building.wa.townhall.dat: dat/tow/building.wa.townhall.datt
	$(DATT) $** > $@
dat/tunnel/tunnel.wa.railtrack.dat: dat/tunnel/tunnel.wa.railtrack.datt
	$(DATT) $** > $@
dat/tunnel/tunnel.wa.road.dat: dat/tunnel/tunnel.wa.road.datt
	$(DATT) $** > $@
dat/tunnel/tunnel.wa.water.dat: dat/tunnel/tunnel.wa.water.datt
	$(DATT) $** > $@
dat/way-air/way.wa.air.dat: dat/way-air/way.wa.air.datt
	$(DATT) $** > $@
dat/way-misc/way.wa.misc.dat: dat/way-misc/way.wa.misc.datt
	$(DATT) $** > $@
dat/way-road/bridge.wa.road.dat: dat/way-road/bridge.wa.road.datt
	$(DATT) $** > $@
dat/way-road/way.wa.road.dat: dat/way-road/way.wa.road.datt
	$(DATT) $** > $@
dat/way-track/bridge.wa.railtrack.dat: dat/way-track/bridge.wa.railtrack.datt
	$(DATT) $** > $@
dat/way-track/way-object.wa.catenary.dat: dat/way-track/way-object.wa.catenary.datt
	$(DATT) $** > $@
dat/way-track/way.wa.railtrack.dat: dat/way-track/way.wa.railtrack.datt
	$(DATT) $** > $@
dat/way-track/way.wa.tramtrack.dat: dat/way-track/way.wa.tramtrack.datt
	$(DATT) $** > $@
dat/way-water/way.wa.water.dat: dat/way-water/way.wa.water.datt
	$(DATT) $** > $@
dat/way-powerline/bridge.wa.powerline.dat128: dat/way-powerline/bridge.wa.powerline.datt128
	$(DATT) $** > $@
dat/way-powerline/tunnel.wa.powerline.dat128: dat/way-powerline/tunnel.wa.powerline.datt128
	$(DATT) $** > $@
dat/way-powerline/way.wa.powerline.dat128: dat/way-powerline/way.wa.powerline.datt128
	$(DATT) $** > $@
