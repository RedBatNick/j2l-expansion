var objectList = ds_list_create();

for (var i = 0; i < ds_list_size(global.depthList); i+=1) 
{
    var newdepth = -10+(i*5);
    
    ds_list_clear(objectList);
    switch (ds_list_find_value(global.depthList, i)) 
    {
        case depthorder_block:
            // Blocks.
            ds_list_add(objectList, oEditBlock);
            ds_list_add(objectList, oEditMiniBlock);
            ds_list_add(objectList, oSlipBlock);
            
            
            // Solid Lines.
            ds_list_add(objectList, oSolidLineU);
            ds_list_add(objectList, oSolidLineR);
            ds_list_add(objectList, oSolidLineL);
            ds_list_add(objectList, oSolidLineD);
            
            
            // Mini Solid Lines.
            ds_list_add(objectList, oMiniSolidLineU);
            ds_list_add(objectList, oMiniSolidLineR);
            ds_list_add(objectList, oMiniSolidLineL);
            ds_list_add(objectList, oMiniSolidLineD);
            
            
            // Slopes.
            ds_list_add(objectList, oSlope);
            ds_list_add(objectList, oSlopeUpRight);
            ds_list_add(objectList, oSlopeUpLeft);
            ds_list_add(objectList, oSlopeDownLeft);
            ds_list_add(objectList, oSlopeDownRight);
            
            
            // Conveyors.
            //ds_list_add(objectList, oSlideBlock);
            ds_list_add(objectList, oSlideBlockU);
            ds_list_add(objectList, oSlideBlockR);
            ds_list_add(objectList, oSlideBlockL);
            ds_list_add(objectList, oSlideBlockD);
            
            
            // Platforms.
            ds_list_add(objectList, oPlatform);
            ds_list_add(objectList, oPlatformSideways);
            
            ds_list_add(objectList, oSnaplessPlatform);
            ds_list_add(objectList, oSnaplessPlatformSideways);
            
            ds_list_add(objectList, oSnapform);
            ds_list_add(objectList, oSnapformSideways);
            
            ds_list_add(objectList, oDisappearPlatform);
            ds_list_add(objectList, oDisappearPlatformSideways);
            break;
           
        case depthorder_spike:
            // Spikes.
            ds_list_add(objectList, oSpikeUp);
            ds_list_add(objectList, oSpikeRight);
            ds_list_add(objectList, oSpikeLeft);
            ds_list_add(objectList, oSpikeDown);
            
            
            // Mini Spikes.
            ds_list_add(objectList, oMiniSpikeUp);
            ds_list_add(objectList, oMiniSpikeRight);
            ds_list_add(objectList, oMiniSpikeLeft);
            ds_list_add(objectList, oMiniSpikeDown);
            
            
            // Thin Spikes.
            ds_list_add(objectList, oSpikeUpThin);
            ds_list_add(objectList, oSpikeRightThin);
            ds_list_add(objectList, oSpikeLeftThin);
            ds_list_add(objectList, oSpikeDownThin);
            
            
            // Mini Thin Spikes.
            ds_list_add(objectList, oMiniSpikeUpThin);
            ds_list_add(objectList, oMiniSpikeRightThin);
            ds_list_add(objectList, oMiniSpikeLeftThin);
            ds_list_add(objectList, oMiniSpikeDownThin);
            
            
            // Flat Spikes.
            ds_list_add(objectList, oSpikeUpRightFlat);
            ds_list_add(objectList, oSpikeDownRightFlat);
            ds_list_add(objectList, oSpikeDownLeftFlat);
            ds_list_add(objectList, oSpikeUpLeftFlat);
            
            
            // Mini Flat Spikes.
            ds_list_add(objectList, oMiniSpikeUpFlat);
            ds_list_add(objectList, oMiniSpikeRightFlat);
            ds_list_add(objectList, oMiniSpikeLeftFlat);
            ds_list_add(objectList, oMiniSpikeDownFlat);
            
            
            // Line Spikes.
            ds_list_add(objectList, oSpikeUpLine);
            ds_list_add(objectList, oSpikeRightLine);
            ds_list_add(objectList, oSpikeLeftLine);
            ds_list_add(objectList, oSpikeDownLine);
            ds_list_add(objectList, oSpikeUpLineHalf);
            ds_list_add(objectList, oSpikeRightLineHalf);
            ds_list_add(objectList, oSpikeLeftLineHalf);
            ds_list_add(objectList, oSpikeDownLineHalf);
            
            
            // Mini Line Spikes.
            ds_list_add(objectList, oMiniSpikeUpLine);
            ds_list_add(objectList, oMiniSpikeRightLine);
            ds_list_add(objectList, oMiniSpikeLeftLine);
            ds_list_add(objectList, oMiniSpikeDownLine);
            ds_list_add(objectList, oMiniSpikeUpLineHalf);
            ds_list_add(objectList, oMiniSpikeRightLineHalf);
            ds_list_add(objectList, oMiniSpikeLeftLineHalf);
            ds_list_add(objectList, oMiniSpikeDownLineHalf);
            
            
            // Hole Spikes.
            ds_list_add(objectList, oSpikeUpHole);
            ds_list_add(objectList, oSpikeRightHole);
            ds_list_add(objectList, oSpikeLeftHole);
            ds_list_add(objectList, oSpikeDownHole);
            
            
            // Box Spikes.
            ds_list_add(objectList, oSpikeUpRightBox);
            ds_list_add(objectList, oSpikeDownRightBox);
            ds_list_add(objectList, oSpikeDownLeftBox);
            ds_list_add(objectList, oSpikeUpLeftBox);
            
            
            // Curved Spikes.
            ds_list_add(objectList, oSpikeUpRightCurved);
            ds_list_add(objectList, oSpikeUpLeftCurved);
            ds_list_add(objectList, oSpikeRightUpCurved);
            ds_list_add(objectList, oSpikeRightDownCurved);
            ds_list_add(objectList, oSpikeLeftUpCurved);
            ds_list_add(objectList, oSpikeLeftDownCurved);
            ds_list_add(objectList, oSpikeDownRightCurved);
            ds_list_add(objectList, oSpikeDownLeftCurved);
            
            
            // Fruit.
            ds_list_add(objectList, oApple);
            ds_list_add(objectList, oEggplant);
            ds_list_add(objectList, oBanana);
            
            
            // Killer Lines.
            ds_list_add(objectList, oKillerLineV);
            ds_list_add(objectList, oKillerLineH);
            ds_list_add(objectList, oKillerLineDA);
            ds_list_add(objectList, oKillerLineDB);
            
            
            // Killer Blocks.
            ds_list_add(objectList, oKillerBlock);
            ds_list_add(objectList, oMiniKillerBlock);
            break;
           
        case depthorder_water:
            // Standard Water.
            ds_list_add(objectList, oWater);
            ds_list_add(objectList, oWater2);
            ds_list_add(objectList, oWater3);
            
            
            // Classic Water.
            ds_list_add(objectList, oWaterNekoron);
            ds_list_add(objectList, oWaterCatharsis);
            
            
            ds_list_add(objectList, oWaterDisappear);
            break;

        case depthorder_player:
            // Player.
            ds_list_add(objectList, oPlayer);
            
            
            // Saves.
            ds_list_add(objectList, oSave);
            ds_list_add(objectList, oSaveFlip);
            
            
            // Markers.
            ds_list_add(objectList, oPlayerStart);
            ds_list_add(objectList, oWarp);
            ds_list_add(objectList, oBulletBlocker);
            ds_list_add(objectList, oAlignMarker);  
                 
            ds_list_add(objectList, oJumpRefresher);
            
            break;
    }
    
    for (var j = 0; j < ds_list_size(objectList); j+=1) {
        var obj = ds_list_find_value(objectList, j);
        with (obj) { depth = newdepth; }
        object_set_depth(obj, newdepth);
    }
}
ds_list_destroy(objectList);

// set vines to be just above blocks
var newdepth = object_get_depth(oEditBlock)-1;

with (oVineL) { depth = newdepth; }
object_set_depth(oVineL, newdepth);

with (oVineR) { depth = newdepth; }
object_set_depth(oVineR, newdepth);

// set player to be just above siblings
object_set_depth(oPlayer, object_get_depth(oPlayer)-1);
with (oPlayer) { depth -= 1; }

// set grid to be just behind player siblings
oDrawGrid.depth = object_get_depth(oPlayer)+2;
