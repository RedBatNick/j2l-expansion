global.deathEnabled = false;
with (oRecordPlayer) { instance_destroy(); }

//if not instance_exists(oPlayer) {loadPlayer() }
with (oPlayer) 
    djump = global.restartWithDJump;

reloadObjects();
codable_room_restart();

clearRecordList();
if (!global.paused) 
{
    if (!instance_exists(oPlayer))
        loadPlayer();
        
    //record movement values
    global.recordX = oPlayer.x;
    global.recordY = oPlayer.y;
    global.recordGrav = global.grav;
    global.recordXscale = global.player_xscale; 
    global.recordVspeed = 0;
    global.recordDjump = oPlayer.djump;
}
else
{
    global.recordX = global.pausedX;
    global.recordY = global.pausedY;
    global.recordGrav = global.pausedgrav;
    global.recordXscale = global.pausedplayer_xscale;
    global.recordVspeed = global.pausedVspeed;
    global.recordDjump = global.pausedDjump;
}

global.record = 1;
