///saveXToObject(saveid, [ readid ])
var saveid = argument[0];

var readid = 0;
if (argument_count == 2)
    readid = argument[1];

//default objects
if (readid >= 0) 
{
    switch (saveid) 
    {
        case 1:  return oEditBlock
        case 2:  return oEditMiniBlock
        case 3:  return oSpikeUp
        case 4:  return oSpikeRight
        case 5:  return oSpikeLeft
        case 6:  return oSpikeDown
        case 7:  return oMiniSpikeUp
        case 8:  return oMiniSpikeRight
        case 9:  return oMiniSpikeLeft
        case 10: return oMiniSpikeDown
        case 11: return oApple
        case 12: return oSave
        case 13: return oPlatform
        case 14: return oWater
        case 15: return oWater2
        case 16: return oVineL
        case 17: return oVineR
        case 18: return oKillerBlock
        case 19: return oBulletBlocker
        case 20: return oPlayerStart
        case 21: return oWarp
        case 22: return oJumpRefresher
        case 23: return oWater3
        case 24: return oGravityArrowUp
        case 25: return oGravityArrowDown
        case 26: return oSaveFlip
        case 27: return oMiniKillerBlock 
    
        default: 
            if (readid == 0) 
                return noone;
    }
}

//ctool objects
if (readid >= 1) 
{
    switch (saveid) 
    {
        case 28: return oBoosterUp
        case 29: return oBoosterUpMini
        case 30: return oBoosterUpRefresher
        case 31: return oBoosterUpApple
        case 32: return oGravityBlockUp
        case 33: return oGravityBlockDown
        case 34: return oVaporUp
        case 35: return oVaporDown
        case 36: return oLineKillerV
        case 37: return oLineKillerH
        case 38: return oLineKillerDA
        case 39: return oLineKillerDB
        case 40: return oShootRefresherL
        case 41: return oShootRefresherR
        case 42: return oFieldTripleOn
        case 43: return oFieldDotkidOn
        case 44: return oFieldDotkidOff
        case 45: return oWaterCatharsis
        case 46: return oFieldTripleOff
        case 47: return oWaterDisappear
        case 48: return oWaterMini
        case 49: return oWater2Mini
        case 50: return oWater3Mini
        case 51: return oGravityBlockUpMini
        case 52: return oGravityBlockDownMini
        case 53: return oVaporUpMini
        case 54: return oVaporDownMini
        case 55: return oFieldTripleOnMini
        case 56: return oFieldDotkidOnMini
        case 57: return oFieldDotkidOffMini
        case 58: return oWaterCatharsisMini
        case 59: return oWaterDisappearMini
        case 60: return oPlatformSideways
    
        default: 
            if (readid == 1) 
                return noone;
    }
}

/*UNUSED GTOOL OBJECTS
if readid >= 2 {
    switch saveid {
        case 61: return oRocketField
        case 62: return oRocketEnd
        case 63: return oLineField
        case 64: return oLineEnd
        case 65: return objEditBlock2
        
        default: 
            if readid == 2 return noone
    }
}*/
