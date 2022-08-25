///menuPrefPlayer_Death()
global.deathEnabled = (global.deathEnabled + 1) mod 3;
saveConfig();
