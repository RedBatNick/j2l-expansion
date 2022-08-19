switch argument0
{
    case oWaterDisappearMini:
    case 34:
    case 35:
    case 36:
    case 46:
    case 48:
    case 50:
    case 60:
    case 62:
    case 56:
    case 58:
    case 73:
    case 31:
    case 32:
    case 33:
    case 45:
    case 47:
    case 49:
    case 59:
    case 61:
    case 55:
    case 57:
    case 37:
    case 38:
        if (string_count("Mini", object_get_name(argument0)) > 0)
            return 2;
        else
            return 1;
        break
    default:
        return 0;
}

