///menuFileFormat_CtoolExport()
if (window_get_fullscreen()) 
{
    window_set_fullscreen(false);
    oWorld.alarm[0] = 1;
    oWorld.buffertype = "ctool";
    oWorld.alarm[2] = 2;
}
else { saveMapAskName("ctool"); }
