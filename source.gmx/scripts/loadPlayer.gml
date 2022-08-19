with (oPlayer) { instance_destroy(); }
with (oPlayerBullet) { instance_destroy(); }
with (oPlayerBlood) { instance_destroy(); }

reloadObjects();

global.grav = global.saveGrav;
global.player_djump = true;
global.player_xscale = global.savePlayerXScale;
global.playerAngle = global.savePlayerAngle;

instance_create(global.savePlayerX, global.savePlayerY, oPlayer);
