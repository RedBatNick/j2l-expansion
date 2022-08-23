var filetype = "jtool";

if (argument_count == 1)
    filetype = argument[0];

if (global.input_cancel)
    exit;

var should_load = true;
if (global.input_bool) {
    should_load = saveMapAskName();
}

if (should_load) 
{
    if (!window_get_fullscreen()) 
    {
        switch(filetype)
        {            
            case "rmj":
            loadRMJMap();
            break;
            
            default:
            loadMapAskName(filetype);
            break;
        }
    }
    else 
    {
        window_set_fullscreen(false);
        oWorld.alarm[0] = 1;
        oWorld.buffertype = filetype;
        oWorld.alarm[2] = 2;
    }
}
