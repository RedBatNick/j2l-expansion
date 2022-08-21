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
        case 1:  return oEditBlock;
        case 2:  return oEditMiniBlock;
        case 3:  return oSpikeUp;
        case 4:  return oSpikeRight;
        case 5:  return oSpikeLeft;
        case 6:  return oSpikeDown;
        case 7:  return oMiniSpikeUp;
        case 8:  return oMiniSpikeRight;
        case 9:  return oMiniSpikeLeft;
        case 10: return oMiniSpikeDown;
        case 11: return oApple;
        case 12: return oSave;
        case 13: return oPlatform;
        case 14: return oWater;
        case 15: return oWater2;
        case 16: return oVineL;
        case 17: return oVineR;
        case 18: return oKillerBlock;
        case 19: return oBulletBlocker;
        case 20: return oPlayerStart;
        case 21: return oWarp;
        case 22: return oJumpRefresher;
        case 23: return oWater3;
        case 24: return oGravityArrowUp;
        case 25: return oGravityArrowDown;
        case 26: return oSaveFlip;
        case 27: return oMiniKillerBlock;
    
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
        case 27: return oPlatformSideways;
        case 28: return oFieldTripleOn;
        case 29: return oFieldTripleOff;
        case 30: return oBoosterUp;
        case 31: return oBoosterUpMini;
        case 32: return oBoosterUpRefresher;
        case 33: return oGravityBlockUp;
        case 34: return oGravityBlockDown;
        case 35: return oVaporUp;
        case 36: return oVaporDown;
        case 37: return oShootRefresherL;
        case 38: return oShootRefresherR;
        case 39: return oBoosterUpApple;
        case 40: return oLineKillerH;
        case 41: return oLineKillerV;
        case 42: return oLineKillerDA;
        case 43: return oLineKillerDB;
        case 44: return oTheBoy;
        case 45: return oWaterDisappear;
        case 46: return oFieldDotkidOn;
        case 47: return oFieldDotkidOff;
        case 48: return oWaterDisappearMini;
        case 49: return oWaterMini;
        case 50: return oWater2Mini;
        case 51: return oWater3Mini;
        case 52: return oFieldTripleOnMini;
        case 53: return oFieldDotkidOnMini;
        case 54: return oFieldDotkidOffMini;
        case 55: return oVaporUpMini;
        case 56: return oVaporDownMini;
        case 57: return oGravityBlockUpMini;
        case 58: return oGravityBlockDownMini;
        case 59: return oWaterCatharsis;
        case 60: return oWaterCatharsisMini;
    
        default: 
            if (readid == 1) 
                return noone;
    }
}

/*UNUSED GTOOL OBJECTS
if (readid >= 2) 
{
    switch (saveid) 
    {
        case 61: return oRocketField;
        case 62: return oRocketEnd;
        case 63: return oLineField;
        case 64: return oLineEnd;
        case 65: return objEditBlock2;
        
        default: 
            if (readid == 2)
                return noone;
    }
}*/
