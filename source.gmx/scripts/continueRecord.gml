global.paused = false;

var filename = argument[0];
loadRecord(filename,1);

if (instance_exists(oPlayer))
{
    oPlayer.x = global.continueX;
    oPlayer.y = global.continueY;
}
else { instance_create(global.continueX,global.continueY,oPlayer); }
global.grav = global.continueGrav;
global.player_xscale = global.continueXscale;
oPlayer.vspeed = global.continueVspeed;
oPlayer.djump = global.continuedjump;

//screen_save_part("Screenie.png",0,0,display_get_width(),display_get_height())
continueRecordBegin();
