///controlObject(type, [val])
///combines the functionality of the xObject scripts
///so it's much easier to modify the palette objects

var type,val

if (argument_count >= 1) {
    type = argument[0];
}
if (argument_count >= 2) {
    val = argument[1];
}

switch(type)
{
    case 'saveID': return object_get_name(val); break;
    case 'loadID': return asset_get_index(val); break;
    case 'inPalette':
    switch val {
        // Blocks.
        case oEditBlock:
        case oEditMiniBlock:
        
        case oSlipBlock:
        
        
        // Platforms.
        case oPlatform:
        case oPlatformSideways:
        
        case oSnaplessPlatform:
        case oSnaplessPlatformSideways:
        
        case oSnapform:
        case oSnapformSideways:
        
        case oDisappearPlatform:
        case oDisappearPlatformSideways:
        
        
        // Slopes.
        case oSlope:
        case oSlopeUpRight:
        case oSlopeUpLeft:
        case oSlopeDownLeft:
        case oSlopeDownRight:
        
        
        // Conveyors.
        case oSlideBlock:
        case oSlideBlockU:
        case oSlideBlockR:
        case oSlideBlockL:
        case oSlideBlockD:
        
        
        // Spikes.
        case oSpikeUp:
        case oSpikeRight:
        case oSpikeLeft:
        case oSpikeDown:
        
        
        // Minispikes.
        case oMiniSpikeUp:
        case oMiniSpikeRight:
        case oMiniSpikeLeft:
        case oMiniSpikeDown:
        
        
        // Fruits.
        case oApple:
        case oEggplant:
        case oBanana:
        
        
        // Lines.
        case oLineKillerV:
        case oLineKillerH:
        case oLineKillerDA:
        case oLineKillerDB:
        
        
        // Killerblocks.
        case oKillerBlock:
        case oMiniKillerBlock:    
        
        
        // Water.
        case oWater:
        case oWater2:
        case oWater3:
        
        case oWaterNekoron:
        case oWaterCatharsis:
        case oWaterDisappear:
        
        
        // Vapor.
        case oVaporUp:
        case oVaporDown:
        
        
        // Vines.
        case oVineL:
        case oVineR:
        
        
        // Refreshers.
        case oJumpRefresher:
        
        case oShootRefresherR:
        case oShootRefresherL:
        
        
        // Gravity Arrows.
        case oGravityArrowUp:
        case oGravityArrowRight:
        case oGravityArrowLeft:
        case oGravityArrowDown:
        
        
        // Gravity Blocks.
        case oGravityBlockUp:
        case oGravityBlockRight:
        case oGravityBlockLeft:
        case oGravityBlockDown:
        
        
        // Saves.
        case oSave:
        case oSaveFlip:
        
        
        // Markers.
        case oBulletBlocker:
        case oAlignMarker:
        
        
        // Warps.
        case oPlayerStart:
        case oWarp:
        
        
        // Other:
        case oTrg:
        
        return true;
    }
    return false;
    break;
}
