///menuPrefScreen_Fullscreen()
window_set_fullscreen(!window_get_fullscreen());
oWorld.alarm[0] = 1;
completelyResetZoom();
saveConfig();
