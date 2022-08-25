///menuFileFormat_RMJImport()
if (window_get_fullscreen()) 
{
    window_set_fullscreen(false);
    oWorld.alarm[0] = 1;
    oWorld.buffertype = "rmj";
    oWorld.alarm[1] = 2;
}
else { saveRMJMap(); }
