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
    global.recordAngle = global.playerAngle;
    global.recordVspeed = 0;
    global.recordDjump = oPlayer.djump;
    
    
    //record transforms
    global.recordDotkid = global.dotkid;
    global.recordVkid = global.vkid;
    global.recordTelekid = global.telekid;
    global.recordLunarkid = global.lunarkid;
    global.recordLinekid = global.linekid;
    

    //record physics
    global.recordInfinitejump = global.infinitejump;
    global.recordIcetype = global.icetype;
    global.recordSlippage = global.slippage;
    
    
    //record border
    global.recordBorderbox = global.borderbox;
    global.recordScreenwraptype = global.screenwraptype;
    
    
    //record interactions
    global.recordDotclip = global.dotclip;
    global.recordDotplatfix = global.dotplatfix;
    global.recordTelerange = global.telerange;
}
else
{
    global.recordX = global.pausedX;
    global.recordY = global.pausedY;
    global.recordGrav = global.pausedgrav;
    global.recordXscale = global.pausedplayer_xscale;
    global.recordAngle = global.pausedplayerAngle;
    global.recordVspeed = global.pausedVspeed;
    global.recordDjump = global.pausedDjump;
}

global.record = 1;
