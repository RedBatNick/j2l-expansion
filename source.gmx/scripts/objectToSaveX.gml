///objectToSaveX(objectindex, [ readid ])
var objectindex = argument[0];

var readid = 0;
if (argument_count == 2)
    readid = argument[1];

//default objects
if (readid >= 0) 
{
    switch (objectindex) 
    {
        case oEditBlock:        return 1;
        case oEditMiniBlock:    return 2;
        case oSpikeUp:          return 3;
        case oSpikeRight:       return 4;
        case oSpikeLeft:        return 5;
        case oSpikeDown:        return 6;
        case oMiniSpikeUp:      return 7;
        case oMiniSpikeRight:   return 8;
        case oMiniSpikeLeft:    return 9;
        case oMiniSpikeDown:    return 10;
        case oApple:            return 11;
        case oSave:             return 12;
        case oPlatform:         return 13;
        case oWater:            return 14;
        case oWater2:           return 15;
        case oVineL:            return 16;
        case oVineR:            return 17;
        case oKillerBlock:      return 18;
        case oBulletBlocker:    return 19;
        case oPlayerStart:      return 20;
        case oWarp:             return 21;
        case oJumpRefresher:    return 22;
        case oWater3:           return 23;
        case oGravityArrowUp:   return 24;
        case oGravityArrowDown: return 25;
        case oSaveFlip:         return 26;
        case oMiniKillerBlock:  return 27;
        
        default: 
            if (readid == 0) 
                return -1;
    }
}

//ctool objects
if (readid >= 1) 
{
    switch (objectindex) 
    {
        case oPlatformSideways:     return 27;
        case oFieldTripleOn:        return 28;
        case oFieldTripleOff:       return 29;
        case oBoosterUp:            return 30;
        case oBoosterUpMini:        return 31;
        case oBoosterUpRefresher:   return 32;
        case oGravityBlockUp:       return 33;
        case oGravityBlockDown:     return 34;
        case oVaporUp:              return 35;
        case oVaporDown:            return 36;
        case oShootRefresherL:      return 37;
        case oShootRefresherR:      return 38;
        case oBoosterUpApple:       return 39;
        case oLineKillerH:          return 40;
        case oLineKillerV:          return 41;
        case oLineKillerDA:         return 42;
        case oLineKillerDB:         return 43;
        case oTheBoy:               return 44;
        case oWaterDisappear:       return 45;
        case oFieldDotkidOn:        return 46;
        case oFieldDotkidOff:       return 47;
        case oWaterDisappearMini:   return 48;
        case oWaterMini:            return 49;
        case oWater2Mini:           return 50;
        case oWater3Mini:           return 51;
        case oFieldTripleOnMini:    return 52;
        case oFieldDotkidOnMini:    return 53;
        case oFieldDotkidOffMini:   return 54;
        case oVaporUpMini:          return 55;
        case oVaporDownMini:        return 56;
        case oGravityBlockUpMini:   return 57;
        case oGravityBlockDownMini: return 58;
        case oWaterCatharsis:       return 59;
        case oWaterCatharsisMini:   return 60;
        
        default:
            if (readid == 1) 
                return -1;
    }
}

/*UNUSED GTOOL OBJECTS
if (readid >= 2) 
{
    switch (objectindex) 
    {
        case oRocketField:      return 61;
        case oRocketEnd:        return 62;
        case oLineField:        return 63;
        case oLineEnd:          return 64;
        case objEditBlock2:     return 65;
        
        default: 
            if (readid == 2) 
                return -1;
    }
}*/
