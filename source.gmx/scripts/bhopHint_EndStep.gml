// Calculate if bunny hops were timed early, late, or perfectly.

bhcount += 1;

var player_on_ground = false;
with (argument0) 
{
    player_on_ground = (place_meeting(x,y+global.grav,oBlock)
    && place_meeting(x,y+global.grav,oBlock));
}

if (global.frameaction_jump) {
    bhop_show = false;
}

// press jump before hitting ground
// simulate player to find out how many frames it would have taken to hit the ground
if (scrButtonCheckPressed(KEY.JUMP) && !global.frameaction_jump && instance_exists(argument0)) 
{
    var realplayer = argument0;
    var playersim;
    with (argument0) { playersim = instance_copy(true); }
    playersim.y = realplayer.yprevious;
    playersim.vspeed = bhop_vspeedprevious;
    
    var numsteps = 0;
    with (playersim) 
    {
        var on_ground = false;
        while (!on_ground && numsteps < 10) 
        {
            numsteps += 1;
            y += vspeed;
            vspeed += gravity;
            if (vspeed > maxVspeed) { vspeed = maxVspeed; }
            on_ground = (place_meeting(x,y+global.grav,oBlock)
            && place_meeting(x,y+global.grav,oBlock));
        }
        instance_destroy();
    }
    
    if (numsteps <= bhop_hintcutoff) {
        bhop_show = true;
        bhop_offset = -numsteps;
    }
}

// press jump after on ground for a while
if (player_on_ground && !bhop_waitinglate) {
    bhop_waitinglate = true;
    bhcount = -1;
}
if (bhop_waitinglate && global.frameaction_jump) {
    if (bhcount <= bhop_hintcutoff) {
        bhop_show = true;
        bhop_offset = bhcount;
    }
    bhop_waitinglate = false;
}
if (!player_on_ground) {
    bhop_waitinglate = false;
}

if (instance_exists(argument0)) 
    bhop_vspeedprevious = argument0.vspeed;
