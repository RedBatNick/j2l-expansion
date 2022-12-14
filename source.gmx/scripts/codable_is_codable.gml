///codable_is_codable(instance)
//Returns true if this instance is a codable object type, false otherwise

//If this instance was dynamically created, do not allow the user to give it code
if (ds_list_find_index(global.dynamic_instance_list,argument[0]) > -1) 
    return false;

//if (objectInPalette(argument[0].object_index))
//Otherwise, check to see if it's a codable type
switch (argument[0].object_index) {
    case oEditBlock:
    case oEditMiniBlock:
    case oPlatform:
    case oSpikeUp:
    case oSpikeRight:
    case oSpikeLeft:
    case oSpikeDown:
    case oMiniSpikeUp:
    case oMiniSpikeRight:
    case oMiniSpikeLeft:
    case oMiniSpikeDown:
    case oApple:
    case oFreeTrigger:
        return true;
    default:
        return false;
}
