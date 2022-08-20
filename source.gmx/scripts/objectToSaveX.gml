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
        case oEditBlock:        return 1
        case oEditMiniBlock:    return 2
        case oSpikeUp:          return 3
        case oSpikeRight:       return 4
        case oSpikeLeft:        return 5
        case oSpikeDown:        return 6
        case oMiniSpikeUp:      return 7
        case oMiniSpikeRight:   return 8
        case oMiniSpikeLeft:    return 9
        case oMiniSpikeDown:    return 10
        case oApple:            return 11
        case oSave:             return 12
        case oPlatform:         return 13
        case oWater:            return 14
        case oWater2:           return 15
        case oVineL:            return 16
        case oVineR:            return 17
        case oKillerBlock:      return 18
        case oBulletBlocker:    return 19
        case oPlayerStart:      return 20
        case oWarp:             return 21
        case oJumpRefresher:    return 22
        case oWater3:           return 23
        case oGravityArrowUp:   return 24
        case oGravityArrowDown: return 25
        case oSaveFlip:         return 26
        case oMiniKillerBlock:  return 27
        
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
        case oBoosterUp:            return 28
        case oBoosterUpMini:        return 29
        case oBoosterUpRefresher:   return 30
        case oBoosterUpApple:       return 31
        case oGravityBlockUp:       return 32
        case oGravityBlockDown:     return 33
        case oVaporUp:              return 34
        case oVaporDown:            return 35
        case oLineKillerV:          return 36
        case oLineKillerH:          return 37
        case oLineKillerDA:         return 38
        case oLineKillerDB:         return 39
        case oShootRefresherL:      return 40
        case oShootRefresherR:      return 41
        case oFieldTripleOn:        return 42
        case oFieldDotkidOn:        return 43
        case oFieldDotkidOff:       return 44
        case oWaterCatharsis:       return 45
        case oFieldTripleOff:       return 46
        case oWaterDisappear:       return 47
        case oWaterMini:            return 48
        case oWater2Mini:           return 49
        case oWater3Mini:           return 50
        case oGravityBlockUpMini:   return 51
        case oGravityBlockDownMini: return 52
        case oVaporUpMini:          return 53
        case oVaporDownMini:        return 54
        case oFieldTripleOnMini:    return 55
        case oFieldDotkidOnMini:    return 56
        case oFieldDotkidOffMini:   return 57
        case oWaterCatharsisMini:   return 58
        case oWaterDisappearMini:   return 59
        case oPlatformSideways:     return 60
        
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
        case oRocketField:      return 61
        case oRocketEnd:        return 62
        case oLineField:        return 63
        case oLineEnd:          return 64
        case objEditBlock2:     return 65
        
        default: 
            if (readid == 2) 
                return -1;
    }
}*/
