///menuPrefPlayer_Death()
global.deathEnabled = (global.deathEnabled + 1) mod 4;
saveConfig();
