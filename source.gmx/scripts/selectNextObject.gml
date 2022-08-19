switch( selected_object ) {
    // Spikes.    
    case oSpikeRight:
        selected_object = oSpikeDown;
        selected_sprite = sSpikeDown;
        break;
    case oSpikeUp:
        selected_object = oSpikeRight;
        selected_sprite = sSpikeRight;
        break;
    case oSpikeLeft:
        selected_object = oSpikeUp;
        selected_sprite = sSpikeUp;
        break;
    case oSpikeDown:
        selected_object = oSpikeLeft;
        selected_sprite = sSpikeLeft;
        break;
    
    // Minispikes.
    case oMiniSpikeRight:
        selected_object = oMiniSpikeDown;
        selected_sprite = sMiniSpikeDown;
        break;
    case oMiniSpikeUp:
        selected_object = oMiniSpikeRight;
        selected_sprite = sMiniSpikeRight;
        break;
    case oMiniSpikeLeft:
        selected_object = oMiniSpikeUp;
        selected_sprite = sMiniSpikeUp;
        break;
    case oMiniSpikeDown:
        selected_object = oMiniSpikeLeft;
        selected_sprite = sMiniSpikeLeft;
        break;
        
    // Blocks.
    case oEditBlock:
        selected_object = oEditMiniBlock;
        selected_sprite = sEditMiniBlock;
        break;
    case oEditMiniBlock:
        selected_object = oEditBlock;
        selected_sprite = sEditBlock;
        break;
        
    // Platforms.
    case oPlatform:
        selected_object = oPlatform;
        selected_sprite = sPlatform;
        break;
        
    // Water.
    case oWater:
        selected_object = oWater2;
        selected_sprite = sWater2;
        break;        
    case oWater2:
        selected_object = oWater3;
        selected_sprite = sWater3;
        break;
    case oWater3:
        selected_object = oWater;
        selected_sprite = sWater1;
        
    // Vines.
    case oVineL:
        selected_object = oVineR;
        selected_sprite = sVineR;
        break;
    case oVineR:
        selected_object = oVineL;
        selected_sprite = sVineL;
        break;
        
    // Saves.
    case oSaveFlip:
        selected_object = oSave;
        selected_sprite = sSave;
        break;
    case oSave:
        selected_object = oSaveFlip;
        selected_sprite = sSaveFlip;
        break;
        
    // Fruits.
    case oApple:
        selected_object = oApple;
        selected_sprite = oApple;
        break;
        
    // Killerblocks. 
    case oKillerBlock:
        selected_object = oMiniKillerBlock;
        selected_sprite = sMiniKillerBlock;
        break;
    case oMiniKillerBlock:
        selected_object = oKillerBlock;
        selected_sprite = sKillerBlock;
        break;
        
    // Gravity.
    case oGravityArrowDown:
        selected_object = oGravityArrowUp;
        selected_sprite = sGravityArrowUp;
        break;
    case oGravityArrowUp:
        selected_object = oGravityArrowDown; 
        selected_sprite = sGravityArrowDown;
        break;
    
    // Level start/end.
    case oPlayerStart:
        selected_object = oWarp;
        selected_sprite = sWarp;
        break;
    case oWarp:
        selected_object = oPlayerStart;
        selected_sprite = sPlayerStart;
        break;
        
    default:
        break;
}
