///menuPrefSystem_HotkeyLock()
global.hotkeylock = (global.hotkeylock + 1) mod 3;
saveConfig();
