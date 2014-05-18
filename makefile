SCRIPT_DIR = ./scripts/ 
RELEASE_DIR = ./pak.nippon/ 
MAKEOBJ64 = ..\..\makeobj\makeobjxx.exe pak
MAKEOBJ128 = ..\..\makeobj\makeobjxx.exe pak128
DATT = ruby $(SCRIPT_DIR)datt.rb

########### .pak -> PAKS
PAKS: $(RELEASE_DIR)bridge.np-monorail.pak \
	$(RELEASE_DIR)bridge.np-powerline.pak \
	$(RELEASE_DIR)bridge.np-rail.pak \
	$(RELEASE_DIR)bridge.np-road.pak \
	$(RELEASE_DIR)building.np-airext.pak \
	$(RELEASE_DIR)building.np-airstop.pak \
	$(RELEASE_DIR)building.np-com.pak \
	$(RELEASE_DIR)building.np-cur-castle.pak \
	$(RELEASE_DIR)building.np-cur-church.pak \
	$(RELEASE_DIR)building.np-cur-hospital.pak \
	$(RELEASE_DIR)building.np-cur-infrastructure.pak \
	$(RELEASE_DIR)building.np-cur-kofun.pak \
	$(RELEASE_DIR)building.np-cur-park.pak \
	$(RELEASE_DIR)building.np-cur-public-facility.pak \
	$(RELEASE_DIR)building.np-cur-school.pak \
	$(RELEASE_DIR)building.np-cur-shrine.pak \
	$(RELEASE_DIR)building.np-cur-sport.pak \
	$(RELEASE_DIR)building.np-cur-temple.pak \
	$(RELEASE_DIR)building.np-depot.pak \
	$(RELEASE_DIR)building.np-habour.pak \
	$(RELEASE_DIR)building.np-hq.pak \
	$(RELEASE_DIR)building.np-ind.pak \
	$(RELEASE_DIR)building.np-miscext-containeryard.pak \
	$(RELEASE_DIR)building.np-miscext-post-office.pak \
	$(RELEASE_DIR)building.np-miscext-tank.pak \
	$(RELEASE_DIR)building.np-monorailstop-platform.pak \
	$(RELEASE_DIR)building.np-railext-local-station.pak \
	$(RELEASE_DIR)building.np-railext-platform.pak \
	$(RELEASE_DIR)building.np-railstop-footbridge.pak \
	$(RELEASE_DIR)building.np-railstop-freight-station.pak \
	$(RELEASE_DIR)building.np-railstop-platform.pak \
	$(RELEASE_DIR)building.np-res.pak \
	$(RELEASE_DIR)building.np-roadstop-freight.pak \
	$(RELEASE_DIR)building.np-roadstop.pak \
	$(RELEASE_DIR)building.np-townhall.pak \
	$(RELEASE_DIR)building.np-waterstop.pak \
	$(RELEASE_DIR)crossing.np-rail-road.pak \
	$(RELEASE_DIR)factory.np.pak \
	$(RELEASE_DIR)ground.Outside.pak \
	$(RELEASE_DIR)ground.np.pak \
	$(RELEASE_DIR)misc.np.pak \
	$(RELEASE_DIR)pedestrian.np.pak \
	$(RELEASE_DIR)roadsign.np-monorail.pak \
	$(RELEASE_DIR)roadsign.np-rail.pak \
	$(RELEASE_DIR)roadsign.np-road.pak \
	$(RELEASE_DIR)tree.np.pak \
	$(RELEASE_DIR)tunnel.np-monorail.pak \
	$(RELEASE_DIR)tunnel.np-powerline.pak \
	$(RELEASE_DIR)tunnel.np-rail.pak \
	$(RELEASE_DIR)tunnel.np-road.pak \
	$(RELEASE_DIR)tunnel.np-water.pak \
	$(RELEASE_DIR)way-object.np-catenary.pak \
	$(RELEASE_DIR)way.np-air.pak \
	$(RELEASE_DIR)way.np-misc.pak \
	$(RELEASE_DIR)way.np-monorail.pak \
	$(RELEASE_DIR)way.np-powerline-underground.pak \
	$(RELEASE_DIR)way.np-powerline.pak \
	$(RELEASE_DIR)way.np-rail.pak \
	$(RELEASE_DIR)way.np-road.pak \
	$(RELEASE_DIR)way.np-tram.pak \
	$(RELEASE_DIR)way.np-water.pak

########### .dat => .pak
$(RELEASE_DIR)bridge.np-monorail.pak: dat/way-monorail/bridge.np-monorail.dat dat/way-monorail/monorail-ramp.png dat/way-monorail/monorail-ramp-winter.png dat/way-monorail/monorail-bridge.png dat/way-monorail/monorail-bridge-winter.png
	$(MAKEOBJ64) $@ dat/way-monorail/bridge.np-monorail.dat
$(RELEASE_DIR)bridge.np-powerline.pak: dat/way-powerline/bridge.np-powerline.dat128 dat/way-powerline/powerline-2hv.png dat/way-powerline/powerline-2red.png dat/way-powerline/powerline-4.png
	$(MAKEOBJ128) $@ dat/way-powerline/bridge.np-powerline.dat128
$(RELEASE_DIR)bridge.np-rail.pak: dat/way-track/bridge.np-rail.dat dat/way-track/bridge-1.png dat/way-track/bridge-1-winter.png dat/way-track/bridge-2.png dat/way-track/bridge-2-winter.png dat/way-track/bridge-3.png dat/way-track/bridge-3-winter.png dat/way-track/bridge-4.png dat/way-track/bridge-4-winter.png dat/way-track/bridge-5.png dat/way-track/bridge-5-winter.png
	$(MAKEOBJ64) $@ dat/way-track/bridge.np-rail.dat
$(RELEASE_DIR)bridge.np-road.pak: dat/way-road/bridge.np-road.dat dat/way-road/road-100n-bridge.png dat/way-road/road-100r-bridge.png dat/way-road/road-bridge-3.png dat/way-road/road-bridge-3-winter.png dat/way-road/road-bridge-4.png dat/way-road/road-bridge-4-winter.png dat/way-road/road-bridge-5.png dat/way-road/road-bridge-5-winter.png
	$(MAKEOBJ64) $@ dat/way-road/bridge.np-road.dat
$(RELEASE_DIR)building.np-airext.pak: dat/stop-air/building.np-airext.dat dat/stop-air/airstop.png dat/stop-air/airext-terminal.png
	$(MAKEOBJ64) $@ dat/stop-air/building.np-airext.dat
$(RELEASE_DIR)building.np-airstop.pak: dat/stop-air/building.np-airstop.dat dat/stop-air/airstop.png
	$(MAKEOBJ64) $@ dat/stop-air/building.np-airstop.dat
$(RELEASE_DIR)building.np-com.pak: dat/indcomres/building.np-com.dat dat/indcomres/com-a.png dat/indcomres/com-l1.png dat/indcomres/com-t.png dat/indcomres/com-l2.png dat/indcomres/com-s.png dat/indcomres/com-m1.png dat/indcomres/com-m2.png dat/indcomres/com-h1.png dat/indcomres/com-h2.png dat/indcomres/com-parking.png
	$(MAKEOBJ64) $@ dat/indcomres/building.np-com.dat
$(RELEASE_DIR)building.np-cur-castle.pak: dat/cur/building.np-cur-castle.dat dat/cur/castle-1-tile.png dat/cur/castle-2-tile.png dat/cur/castle-3-tile.png dat/cur/castle-4-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.np-cur-castle.dat
$(RELEASE_DIR)building.np-cur-church.pak: dat/cur/building.np-cur-church.dat dat/cur/church-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.np-cur-church.dat
$(RELEASE_DIR)building.np-cur-hospital.pak: dat/cur/building.np-cur-hospital.dat dat/cur/hospital-1-tile.png dat/cur/hospital-2-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.np-cur-hospital.dat
$(RELEASE_DIR)building.np-cur-infrastructure.pak: dat/cur/building.np-cur-infrastructure.dat dat/cur/switchyard-tile.png dat/cur/substation-tile.png dat/cur/lighthouse.png
	$(MAKEOBJ64) $@ dat/cur/building.np-cur-infrastructure.dat
$(RELEASE_DIR)building.np-cur-kofun.pak: dat/cur/building.np-cur-kofun.dat dat/cur/kofun-1-tile.png dat/cur/kofun-2-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.np-cur-kofun.dat
$(RELEASE_DIR)building.np-cur-park.pak: dat/cur/building.np-cur-park.dat dat/cur/park-1-tile.png dat/cur/park-2-tile.png dat/cur/park-3-tile.png dat/cur/park-4-tile.png dat/cur/zoo-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.np-cur-park.dat
$(RELEASE_DIR)building.np-cur-public-facility.pak: dat/cur/building.np-cur-public-facility.dat dat/cur/community-center-tile.png dat/cur/policestation-tile.png dat/cur/firestation-tile.png dat/cur/library-tile.png dat/cur/historical-museum-tile.png dat/cur/health-and-welfare-center-tile.png dat/cur/tax-office-tile.png dat/cur/employment-service-center-tile.png dat/cur/museum-tile.png dat/cur/civic-hall-tile.png dat/cur/jgsdf-camp-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.np-cur-public-facility.dat
$(RELEASE_DIR)building.np-cur-school.pak: dat/cur/building.np-cur-school.dat dat/cur/school-1-tile.png dat/cur/school-2-tile.png dat/cur/school-3-tile.png dat/cur/school-4-tile.png dat/cur/university-tile.png dat/cur/kindergarten-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.np-cur-school.dat
$(RELEASE_DIR)building.np-cur-shrine.pak: dat/cur/building.np-cur-shrine.dat dat/cur/shrine-1-tile.png dat/cur/shrine-2-tile.png dat/cur/shrine-3-tile.png dat/cur/shrine-4-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.np-cur-shrine.dat
$(RELEASE_DIR)building.np-cur-sport.pak: dat/cur/building.np-cur-sport.dat dat/cur/tenniscourt-tile.png dat/cur/baseballfield-tile.png dat/cur/soccer-stadium-tile.png dat/cur/gymnasium-tile.png dat/cur/swimming-pool-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.np-cur-sport.dat
$(RELEASE_DIR)building.np-cur-temple.pak: dat/cur/building.np-cur-temple.dat dat/cur/temple-1-tile.png dat/cur/temple-2-tile.png dat/cur/temple-3-tile.png dat/cur/temple-4-tile.png dat/cur/temple-5-tile.png dat/cur/cemetery-tile.png
	$(MAKEOBJ64) $@ dat/cur/building.np-cur-temple.dat
$(RELEASE_DIR)building.np-depot.pak: dat/depot/building.np-depot.dat dat/depot/car-depot.png dat/depot/train-depot.png dat/depot/ship-depot.png dat/depot/tram-depot.png dat/depot/air-depot.png dat/depot/monorail-depot.png
	$(MAKEOBJ64) $@ dat/depot/building.np-depot.dat
$(RELEASE_DIR)building.np-habour.pak: dat/harbor/building.np-habour.dat dat/harbor/port1.png dat/harbor/port2-tile.png dat/harbor/port3a-tile.png dat/harbor/port3b-tile.png dat/harbor/port4-tile.png dat/harbor/port5-tile.png
	$(MAKEOBJ64) $@ dat/harbor/building.np-habour.dat
$(RELEASE_DIR)building.np-hq.pak: dat/hq/building.np-hq.dat dat/hq/hq-1-tile.png dat/hq/hq-2-tile.png dat/hq/hq-3-tile.png dat/hq/hq-4-tile.png dat/hq/hq-5-tile.png
	$(MAKEOBJ64) $@ dat/hq/building.np-hq.dat
$(RELEASE_DIR)building.np-ind.pak: dat/indcomres/building.np-ind.dat dat/indcomres/ind-a.png dat/indcomres/ind-l.png dat/indcomres/ind-m1.png dat/indcomres/ind-m2.png dat/indcomres/ind-h1.png dat/indcomres/ind-h2.png dat/indcomres/ind-parking.png
	$(MAKEOBJ64) $@ dat/indcomres/building.np-ind.dat
$(RELEASE_DIR)building.np-miscext-containeryard.pak: dat/stop-freight-station/building.np-miscext-containeryard.dat dat/stop-freight-station/containeryard.png dat/stop-freight-station/freight-station-office.png dat/stop-freight-station/freight-roof-platform-ext.png
	$(MAKEOBJ64) $@ dat/stop-freight-station/building.np-miscext-containeryard.dat
$(RELEASE_DIR)building.np-miscext-post-office.pak: dat/stop-post/building.np-miscext-post-office.dat dat/stop-post/post-office.png
	$(MAKEOBJ64) $@ dat/stop-post/building.np-miscext-post-office.dat
$(RELEASE_DIR)building.np-miscext-tank.pak: dat/stop-freight-station/building.np-miscext-tank.dat dat/stop-freight-station/tanks.png
	$(MAKEOBJ64) $@ dat/stop-freight-station/building.np-miscext-tank.dat
$(RELEASE_DIR)building.np-monorailstop-platform.pak: dat/stop-monorail/building.np-monorailstop-platform.dat dat/stop-monorail/monorail-ug-platform-i.png dat/stop-monorail/monorail-platform-i.png
	$(MAKEOBJ64) $@ dat/stop-monorail/building.np-monorailstop-platform.dat
$(RELEASE_DIR)building.np-railext-local-station.pak: dat/stop-station/building.np-railext-local-station.dat dat/stop-station/local-station.png
	$(MAKEOBJ64) $@ dat/stop-station/building.np-railext-local-station.dat
$(RELEASE_DIR)building.np-railext-platform.pak: dat/stop-platform/building.np-railext-platform.dat dat/stop-platform/platform-f.png dat/stop-platform/platform-f-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.np-railext-platform.dat
$(RELEASE_DIR)building.np-railstop-footbridge.pak: dat/stop-platform/building.np-railstop-footbridge.dat dat/stop-platform/footbridge-1.png dat/stop-platform/footbridge-1-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.np-railstop-footbridge.dat
$(RELEASE_DIR)building.np-railstop-freight-station.pak: dat/stop-freight-station/building.np-railstop-freight-station.dat dat/stop-freight-station/freight-platform-1.png dat/stop-freight-station/freight-platform-1-winter.png dat/stop-freight-station/freight-platform-2.png dat/stop-freight-station/freight-platform-2-winter.png dat/stop-freight-station/freight-platform-3.png dat/stop-freight-station/freight-platform-3-winter.png dat/stop-freight-station/freight-roof-platform.png dat/stop-freight-station/freight-roof-platform-winter.png dat/stop-freight-station/freight-platform-misc.png
	$(MAKEOBJ64) $@ dat/stop-freight-station/building.np-railstop-freight-station.dat
$(RELEASE_DIR)building.np-railstop-platform.pak: dat/stop-platform/building.np-railstop-platform.dat dat/stop-platform/platform-0.png dat/stop-platform/platform-0-winter.png dat/stop-platform/platform-1.png dat/stop-platform/platform-1-winter.png dat/stop-platform/platform-1s.png dat/stop-platform/platform-1s-winter.png dat/stop-platform/platform-1b.png dat/stop-platform/platform-1b-winter.png dat/stop-platform/platform-1u.png dat/stop-platform/platform-1u-winter.png dat/stop-platform/platform-2.png dat/stop-platform/platform-2-winter.png dat/stop-platform/platform-2s.png dat/stop-platform/platform-2s-winter.png dat/stop-platform/platform-2u.png dat/stop-platform/platform-2u-winter.png dat/stop-platform/platform-2b.png dat/stop-platform/platform-2b-winter.png dat/stop-platform/platform-3.png dat/stop-platform/platform-3-winter.png dat/stop-platform/platform-3s.png dat/stop-platform/platform-3s-winter.png dat/stop-platform/platform-3u.png dat/stop-platform/platform-3u-winter.png dat/stop-platform/platform-4.png dat/stop-platform/platform-4-winter.png
	$(MAKEOBJ64) $@ dat/stop-platform/building.np-railstop-platform.dat
$(RELEASE_DIR)building.np-res.pak: dat/indcomres/building.np-res.dat dat/indcomres/res-a.png dat/indcomres/res-s1.png dat/indcomres/res-s2.png dat/indcomres/res-h1.png dat/indcomres/res-h2.png dat/indcomres/res-t1.png dat/indcomres/res-t2.png dat/indcomres/res-p.png dat/indcomres/res-m.png dat/indcomres/res-h.png dat/indcomres/res-parking.png dat/indcomres/res-empty.png
	$(MAKEOBJ64) $@ dat/indcomres/building.np-res.dat
$(RELEASE_DIR)building.np-roadstop-freight.pak: dat/stop-road/building.np-roadstop-freight.dat dat/stop-road/freightstop-1.png dat/stop-road/freightstop-1d.png dat/stop-road/freightstop-2.png dat/stop-road/freightstop-2-winter.png dat/stop-road/freightstop-2d.png dat/stop-road/freightstop-2d-winter.png dat/stop-road/carstop.png
	$(MAKEOBJ64) $@ dat/stop-road/building.np-roadstop-freight.dat
$(RELEASE_DIR)building.np-roadstop.pak: dat/stop-road/building.np-roadstop.dat dat/stop-road/stops.png dat/stop-road/stops-winter.png
	$(MAKEOBJ64) $@ dat/stop-road/building.np-roadstop.dat
$(RELEASE_DIR)building.np-townhall.pak: dat/tow/building.np-townhall.dat dat/tow/tow-1-tile.png dat/tow/tow-2-tile.png dat/tow/tow-3-tile.png dat/tow/tow-4-tile.png dat/tow/tow-5-tile.png dat/tow/tow-6-tile.png dat/tow/tow-7-tile.png dat/tow/tow-8-tile.png dat/tow/tow-9-tile.png
	$(MAKEOBJ64) $@ dat/tow/building.np-townhall.dat
$(RELEASE_DIR)building.np-waterstop.pak: dat/harbor/building.np-waterstop.dat dat/harbor/canal-stop.png
	$(MAKEOBJ64) $@ dat/harbor/building.np-waterstop.dat
$(RELEASE_DIR)crossing.np-rail-road.pak: dat/crossing/crossing.np-rail-road.dat dat/crossing/crossing.png dat/crossing/crossing-2.png
	$(MAKEOBJ64) $@ dat/crossing/crossing.np-rail-road.dat
$(RELEASE_DIR)factory.np.pak: dat/factory/factory.np.dat dat/factory/steelmill-tile.png dat/factory/ironore-tile.png dat/factory/sand-tile.png dat/factory/stone-tile.png dat/factory/oil-storage-tile.png dat/factory/cementmill-tile.png dat/factory/forestry-tile.png dat/factory/coalmine-tile.png dat/factory/cardealer-tile.png dat/factory/gasstaion-tile.png dat/factory/incinerator-tile.png dat/factory/incinerator-power-tile.png dat/factory/oil-powerplant-tile.png dat/factory/coal-powerplant-tile.png dat/factory/geothermal-powerplant-tile.png dat/factory/solar-powerplant-tile.png dat/factory/refinery-tile.png dat/factory/chemical-plant-tile.png dat/factory/sawmill-tile.png dat/factory/pharmaceutics-tile.png dat/factory/material-storage-tile.png dat/factory/garbage.png dat/factory/printing-tile.png dat/factory/paper-tile.png dat/factory/carfactory-tile.png dat/factory/furniture-tile.png dat/factory/concrete-tile.png dat/factory/windkraftwerk.png dat/factory/nitori.png dat/factory/bookoff.png dat/factory/matsukiyo.png dat/factory/oil-pump.png
	$(MAKEOBJ64) $@ dat/factory/factory.np.dat
$(RELEASE_DIR)ground.Outside.pak: dat/ground/ground.Outside.dat dat/ground/water.png
	$(MAKEOBJ64) $@ dat/ground/ground.Outside.dat
$(RELEASE_DIR)ground.np.pak: dat/ground/ground.np.dat dat/ground/basement.png dat/ground/slopes.png dat/ground/water.png dat/ground/texture-climate.png dat/ground/texture-slope.png dat/ground/texture-shore.png dat/ground/texture-lightmap.png dat/ground/borders.png dat/ground/marker.png dat/ground/fence.png
	$(MAKEOBJ64) $@ dat/ground/ground.np.dat
$(RELEASE_DIR)misc.np.pak: dat/misc/misc.np.dat dat/misc/power-trans.png dat/misc/constructionsite.png dat/misc/tiles.png
	$(MAKEOBJ64) $@ dat/misc/misc.np.dat
$(RELEASE_DIR)pedestrian.np.pak: dat/pedestrian/pedestrian.np.dat dat/pedestrian/pedestrian.png
	$(MAKEOBJ64) $@ dat/pedestrian/pedestrian.np.dat
$(RELEASE_DIR)roadsign.np-monorail.pak: dat/signal/roadsign.np-monorail.dat dat/signal/Signals.png
	$(MAKEOBJ64) $@ dat/signal/roadsign.np-monorail.dat
$(RELEASE_DIR)roadsign.np-rail.pak: dat/signal/roadsign.np-rail.dat dat/signal/Signals.png
	$(MAKEOBJ64) $@ dat/signal/roadsign.np-rail.dat
$(RELEASE_DIR)roadsign.np-road.pak: dat/signal/roadsign.np-road.dat dat/signal/traffic-light.png
	$(MAKEOBJ64) $@ dat/signal/roadsign.np-road.dat
$(RELEASE_DIR)tree.np.pak: dat/tree/tree.np.dat dat/tree/trees.png
	$(MAKEOBJ64) $@ dat/tree/tree.np.dat
$(RELEASE_DIR)tunnel.np-monorail.pak: dat/tunnel/tunnel.np-monorail.dat dat/tunnel/tunnel-monorail.png dat/tunnel/tunnel-monorail-winter.png
	$(MAKEOBJ64) $@ dat/tunnel/tunnel.np-monorail.dat
$(RELEASE_DIR)tunnel.np-powerline.pak: dat/way-powerline/tunnel.np-powerline.dat128 dat/way-powerline/powerline-2hv.png
	$(MAKEOBJ128) $@ dat/way-powerline/tunnel.np-powerline.dat128
$(RELEASE_DIR)tunnel.np-rail.pak: dat/tunnel/tunnel.np-rail.dat dat/tunnel/tunnel-c1.png dat/tunnel/tunnel-c1-winter.png dat/tunnel/tunnel-1.png dat/tunnel/tunnel-1-winter.png dat/tunnel/tunnel-2.png dat/tunnel/tunnel-2-winter.png dat/tunnel/stone-tunnel.png
	$(MAKEOBJ64) $@ dat/tunnel/tunnel.np-rail.dat
$(RELEASE_DIR)tunnel.np-road.pak: dat/tunnel/tunnel.np-road.dat dat/tunnel/tunnel-cr1.png dat/tunnel/tunnel-cr1-winter.png dat/tunnel/tunnel-road1.png dat/tunnel/tunnel-road1-winter.png dat/tunnel/tunnel-road2.png dat/tunnel/tunnel-road2-winter.png dat/tunnel/stone-tunnel.png
	$(MAKEOBJ64) $@ dat/tunnel/tunnel.np-road.dat
$(RELEASE_DIR)tunnel.np-water.pak: dat/tunnel/tunnel.np-water.dat dat/tunnel/tunnel-water.png dat/tunnel/tunnel-water-winter.png dat/tunnel/stone-tunnel.png
	$(MAKEOBJ64) $@ dat/tunnel/tunnel.np-water.dat
$(RELEASE_DIR)way-object.np-catenary.pak: dat/way-track/way-object.np-catenary.dat dat/way-track/catenary-1.png dat/way-track/catenary-2.png
	$(MAKEOBJ64) $@ dat/way-track/way-object.np-catenary.dat
$(RELEASE_DIR)way.np-air.pak: dat/way-air/way.np-air.dat dat/way-air/taxiway-1.png dat/way-air/apron-1.png dat/way-air/runway-1.png
	$(MAKEOBJ64) $@ dat/way-air/way.np-air.dat
$(RELEASE_DIR)way.np-misc.pak: dat/way-misc/way.np-misc.dat dat/way-misc/miscway-1.png dat/way-misc/miscway-1-winter.png dat/way-misc/miscway-2.png dat/way-misc/miscway-2-winter.png dat/way-misc/miscway-3.png dat/way-misc/miscway-3-winter.png dat/way-misc/miscway-4.png dat/way-misc/miscway-4-winter.png dat/way-misc/miscway-5.png dat/way-misc/miscway-5-winter.png dat/way-misc/wall.png dat/way-misc/wall-winter.png
	$(MAKEOBJ64) $@ dat/way-misc/way.np-misc.dat
$(RELEASE_DIR)way.np-monorail.pak: dat/way-monorail/way.np-monorail.dat dat/way-monorail/monorail-elv.png dat/way-monorail/monorail-ground.png dat/way-monorail/monorail-ground-winter.png
	$(MAKEOBJ64) $@ dat/way-monorail/way.np-monorail.dat
$(RELEASE_DIR)way.np-powerline-underground.pak: dat/way-powerline/way.np-powerline-underground.dat dat/way-powerline/powerline-ug.png
	$(MAKEOBJ64) $@ dat/way-powerline/way.np-powerline-underground.dat
$(RELEASE_DIR)way.np-powerline.pak: dat/way-powerline/way.np-powerline.dat128 dat/way-powerline/powerline-1a.png dat/way-powerline/powerline-1b.png dat/way-powerline/powerline-2.png dat/way-powerline/powerline-2hv.png dat/way-powerline/powerline-4.png
	$(MAKEOBJ128) $@ dat/way-powerline/way.np-powerline.dat128
$(RELEASE_DIR)way.np-rail.pak: dat/way-track/way.np-rail.dat dat/way-track/track-1.png dat/way-track/track-1-winter.png dat/way-track/track-2.png dat/way-track/track-2-winter.png dat/way-track/track-3.png dat/way-track/track-3-winter.png dat/way-track/track-4.png dat/way-track/track-4-winter.png dat/way-track/track-3-elv.png dat/way-track/track-3-elv-winter.png dat/way-track/track-4-elv.png dat/way-track/track-4-elv-winter.png dat/way-track/track-3-elv-c.png dat/way-track/track-3-elv-c-winter.png dat/way-track/track-4-elv-c.png dat/way-track/track-4-elv-c-winter.png
	$(MAKEOBJ64) $@ dat/way-track/way.np-rail.dat
$(RELEASE_DIR)way.np-road.pak: dat/way-road/way.np-road.dat dat/way-road/cityroad.png dat/way-road/cityroad-winter.png dat/way-road/road-40n.png dat/way-road/road-40n-winter.png dat/way-road/road-70r.png dat/way-road/road-70r-winter.png dat/way-road/road-100n.png dat/way-road/road-100n-winter.png dat/way-road/road-100n-elv.png dat/way-road/road-100r.png dat/way-road/road-100r-winter.png dat/way-road/road-100r-elv.png dat/way-road/dart-1.png dat/way-road/dart-1-winter.png dat/way-road/dart-2.png dat/way-road/dart-2-winter.png
	$(MAKEOBJ64) $@ dat/way-road/way.np-road.dat
$(RELEASE_DIR)way.np-tram.pak: dat/way-track/way.np-tram.dat dat/way-track/tramtrack-1.png dat/way-track/tramtrack-2.png
	$(MAKEOBJ64) $@ dat/way-track/way.np-tram.dat
$(RELEASE_DIR)way.np-water.pak: dat/way-water/way.np-water.dat dat/way-water/waterway-1.png dat/way-water/waterway-2.png dat/way-water/waterway-3.png dat/way-water/waterway-4.png
	$(MAKEOBJ64) $@ dat/way-water/way.np-water.dat

########### .datt => .dat
dat/cur/building.np-cur-castle.dat: dat/cur/building.np-cur-castle.datt
	$(DATT) $** > $@
dat/cur/building.np-cur-church.dat: dat/cur/building.np-cur-church.datt
	$(DATT) $** > $@
dat/cur/building.np-cur-hospital.dat: dat/cur/building.np-cur-hospital.datt
	$(DATT) $** > $@
dat/cur/building.np-cur-infrastructure.dat: dat/cur/building.np-cur-infrastructure.datt
	$(DATT) $** > $@
dat/cur/building.np-cur-kofun.dat: dat/cur/building.np-cur-kofun.datt
	$(DATT) $** > $@
dat/cur/building.np-cur-park.dat: dat/cur/building.np-cur-park.datt
	$(DATT) $** > $@
dat/cur/building.np-cur-public-facility.dat: dat/cur/building.np-cur-public-facility.datt
	$(DATT) $** > $@
dat/cur/building.np-cur-school.dat: dat/cur/building.np-cur-school.datt
	$(DATT) $** > $@
dat/cur/building.np-cur-shrine.dat: dat/cur/building.np-cur-shrine.datt
	$(DATT) $** > $@
dat/cur/building.np-cur-sport.dat: dat/cur/building.np-cur-sport.datt
	$(DATT) $** > $@
dat/cur/building.np-cur-temple.dat: dat/cur/building.np-cur-temple.datt
	$(DATT) $** > $@
dat/depot/building.np-depot.dat: dat/depot/building.np-depot.datt
	$(DATT) $** > $@
dat/factory/factory.np.dat: dat/factory/factory.np.datt
	$(DATT) $** > $@
dat/harbor/building.np-habour.dat: dat/harbor/building.np-habour.datt
	$(DATT) $** > $@
dat/hq/building.np-hq.dat: dat/hq/building.np-hq.datt
	$(DATT) $** > $@
dat/indcomres/building.np-com.dat: dat/indcomres/building.np-com.datt
	$(DATT) $** > $@
dat/indcomres/building.np-ind.dat: dat/indcomres/building.np-ind.datt
	$(DATT) $** > $@
dat/indcomres/building.np-res.dat: dat/indcomres/building.np-res.datt
	$(DATT) $** > $@
dat/pedestrian/pedestrian.np.dat: dat/pedestrian/pedestrian.np.datt
	$(DATT) $** > $@
dat/stop-air/building.np-airext.dat: dat/stop-air/building.np-airext.datt
	$(DATT) $** > $@
dat/stop-air/building.np-airstop.dat: dat/stop-air/building.np-airstop.datt
	$(DATT) $** > $@
dat/stop-freight-station/building.np-miscext-containeryard.dat: dat/stop-freight-station/building.np-miscext-containeryard.datt
	$(DATT) $** > $@
dat/stop-freight-station/building.np-miscext-tank.dat: dat/stop-freight-station/building.np-miscext-tank.datt
	$(DATT) $** > $@
dat/stop-freight-station/building.np-railstop-freight-station.dat: dat/stop-freight-station/building.np-railstop-freight-station.datt
	$(DATT) $** > $@
dat/stop-monorail/building.np-monorailstop-platform.dat: dat/stop-monorail/building.np-monorailstop-platform.datt
	$(DATT) $** > $@
dat/stop-platform/building.np-railstop-platform.dat: dat/stop-platform/building.np-railstop-platform.datt
	$(DATT) $** > $@
dat/stop-post/building.np-miscext-post-office.dat: dat/stop-post/building.np-miscext-post-office.datt
	$(DATT) $** > $@
dat/stop-station/building.np-railext-local-station.dat: dat/stop-station/building.np-railext-local-station.datt
	$(DATT) $** > $@
dat/tow/building.np-townhall.dat: dat/tow/building.np-townhall.datt
	$(DATT) $** > $@
dat/tunnel/tunnel.np-monorail.dat: dat/tunnel/tunnel.np-monorail.datt
	$(DATT) $** > $@
dat/tunnel/tunnel.np-rail.dat: dat/tunnel/tunnel.np-rail.datt
	$(DATT) $** > $@
dat/tunnel/tunnel.np-road.dat: dat/tunnel/tunnel.np-road.datt
	$(DATT) $** > $@
dat/tunnel/tunnel.np-water.dat: dat/tunnel/tunnel.np-water.datt
	$(DATT) $** > $@
dat/way-air/way.np-air.dat: dat/way-air/way.np-air.datt
	$(DATT) $** > $@
dat/way-misc/way.np-misc.dat: dat/way-misc/way.np-misc.datt
	$(DATT) $** > $@
dat/way-monorail/bridge.np-monorail.dat: dat/way-monorail/bridge.np-monorail.datt
	$(DATT) $** > $@
dat/way-monorail/way.np-monorail.dat: dat/way-monorail/way.np-monorail.datt
	$(DATT) $** > $@
dat/way-powerline/bridge.np-powerline.dat128: dat/way-powerline/bridge.np-powerline.datt128
	$(DATT) $** > $@
dat/way-powerline/tunnel.np-powerline.dat128: dat/way-powerline/tunnel.np-powerline.datt128
	$(DATT) $** > $@
dat/way-powerline/way.np-powerline.dat128: dat/way-powerline/way.np-powerline.datt128
	$(DATT) $** > $@
dat/way-road/bridge.np-road.dat: dat/way-road/bridge.np-road.datt
	$(DATT) $** > $@
dat/way-road/way.np-road.dat: dat/way-road/way.np-road.datt
	$(DATT) $** > $@
dat/way-track/bridge.np-rail.dat: dat/way-track/bridge.np-rail.datt
	$(DATT) $** > $@
dat/way-track/way-object.np-catenary.dat: dat/way-track/way-object.np-catenary.datt
	$(DATT) $** > $@
dat/way-track/way.np-rail.dat: dat/way-track/way.np-rail.datt
	$(DATT) $** > $@
dat/way-track/way.np-tram.dat: dat/way-track/way.np-tram.datt
	$(DATT) $** > $@
dat/way-water/way.np-water.dat: dat/way-water/way.np-water.datt
	$(DATT) $** > $@
