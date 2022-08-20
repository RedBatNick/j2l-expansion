var mini = argument[0];

switch (mini)
{
    // Water.
    case oWater:
    case oWaterMini:
    
    case oWater2:
    case oWater2Mini:
    
    case oWater3:
    case oWater3Mini:
    
    case oWaterCatharsis:
    case oWaterCatharsisMini:
    
    case oWaterDisappear:
    case oWaterDisappearMini:
    
    
    // Vapor.
    case oVaporUp:
    case oVaporUpMini:
    
    case oVaporDown:
    case oVaporDownMini:
    
    
    // Gravity.
    case oGravityBlockUp:
    case oGravityBlockUpMini:
    
    case oGravityBlockDown:
    case oGravityBlockDownMini:
    
    
    // Fields.
    case oFieldDotkidOn:
    case oFieldDotkidOnMini:
 
    case oFieldDotkidOff:
    case oFieldDotkidOffMini:
 
    case oFieldTripleOn:
    case oFieldTripleOnMini:
 
        if (string_count("Mini", object_get_name(mini)) > 0)
            return 2;
        else
            return 1;
        break;
    default:
        return 0;
}

