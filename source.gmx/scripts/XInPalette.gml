// Returns whether or not an object is a special palette object.
// Mainly used in oEdit to differentiate objects placed by the user
// from other misc objects.

var objectindex = argument0

switch objectindex {
    //default objects
    case oSpikeUp:
    case oSpikeRight:
    case oSpikeLeft:
    case oSpikeDown:
    case oMiniSpikeUp:
    case oMiniSpikeRight:
    case oMiniSpikeLeft:
    case oMiniSpikeDown:
    case oEditBlock:
    case oEditMiniBlock:
    case oApple:
    case oSave:
    case oPlatform:
    case oKillerBlock:
    case oWater:
    case oWater2:
    case oWater3:
    case oVineL:
    case oVineR:
    case oBulletBlocker:
    case oPlayerStart:
    case oWarp:
    case oJumpRefresher:
    case oGravityArrowUp:
    case oGravityArrowDown:
    case oSaveFlip:
    case oTrg:
    case oMiniKillerBlock:
    
    //ctool objects
    case oBooster:
    case oBoosterMini:
    case oRefreshBlock:
    case oFruitRefresher:
    case oGravityBlockUp:
    case oGravityBlockDown:
    case oVaporUp:
    case oVaporDown:
    case oLineKillerH:
    case oLineKillerV:
    case oLineKillerDA:
    case oLineKillerDB:
    case oShootRefresherL:
    case oShootRefresherR:
    case oTripleAdd:
    case oDotField:
    case oNoDot:
    case oWaterDisappear:
    case oWaterCatharsis:
    case oTripleRemove:
    case oWaterMini:
    case oWater2Mini:
    case oWater3Mini:
    case oGravityBlockUpMini:
    case oGravityBlockDownMini:
    case oVaporUpMini:
    case oVaporDownMini:
    case oTripleAddMini:
    case oNoDotMini:
    case oWaterCatharsisMini:
    case oWaterDisappearMini:
    case oPlatformSideways:
    
    /*UNUSED GTOOL OBJECTS
    case oRocketField:
    case oRocketEnd:
    case oLineField:
    case oLineEnd:
    case objEditBlock2:
    */
    
    return true;
}
return false;
