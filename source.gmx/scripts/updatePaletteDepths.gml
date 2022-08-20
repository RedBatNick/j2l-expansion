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
            
            
            // Minispikes.
            ds_list_add(objectList, oMiniSpikeUp);
            ds_list_add(objectList, oMiniSpikeRight);
            ds_list_add(objectList, oMiniSpikeLeft);
            ds_list_add(objectList, oMiniSpikeDown);
            
            
            // Fruit.
            ds_list_add(objectList, oApple);
            ds_list_add(objectList, oEggplant);
            ds_list_add(objectList, oBanana);
            
            
            // Killerlines.
            ds_list_add(objectList, oLineKillerV);
            ds_list_add(objectList, oLineKillerH);
            ds_list_add(objectList, oLineKillerDA);
            ds_list_add(objectList, oLineKillerDB);
            
            
            // Killerblocks.
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
