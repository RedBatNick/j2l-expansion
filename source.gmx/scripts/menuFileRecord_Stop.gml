///menuFileRecord_Stop()
global.savecount = 0;
global.SavedPlayerFrameCounter = global.PlayerFrameCounter;
global.RecordPlayerPosition = true;

if (instance_exists(oPlayer)) 
{
    global.stopX = oPlayer.x;
    global.stopY = oPlayer.y;
    global.stopgrav = global.recordGrav;
    global.stopplayer_xscale = global.player_xscale;
    global.stopVspeed = oPlayer.vspeed;
    global.stopDjump = oPlayer.djump;
}
else if (global.paused)
{ 
    global.stopX = global.pausedX;
    global.stopY = global.pausedY;
    global.stopgrav = global.pausedgrav;
    global.stopplayer_xscale = global.pausedplayer_xscale;
    global.stopVspeed = global.pausedVspeed;
    global.stopDjump = global.pausedDjump;
}

playRecord();
escape_button_just_clicked = true;
