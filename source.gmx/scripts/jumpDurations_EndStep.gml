if(!instance_exists(oPlayer))
    exit;

jcount += 1;

if (jumpstate == jstate_1wait) 
    wcount_1 +=1;
else 
    wcount_1 = 0;

if (jumpstate == jstate_2wait) 
    wcount_2 +=1;
else 
    wcount_2 = 0;

var player_on_ground = false;

with (argument[0]) {
    player_on_ground = (place_meeting(x,y+global.grav,oBlock)
    && place_meeting(x,y+global.grav,oBlock));
}

if (global.frameaction_jump) {
    jumpstate = jstate_1hold;
    
    framecount_jump1 = 0;
    framecount_jump1_jc1 = 0;
    framecount_jump1_jc2 = 0;
    framecount_jump1_jc3 = 0;
    framecount_pause = 0;
    
    framecount_jump2 = 0;
    framecount_jump2_jc1 = 0;
    framecount_jump2_jc2 = 0;
    framecount_pause2 = 0;
    jcount = 1;
}
else if (global.frameaction_djump) {
    framecount_jump2_jc1 = 0
    framecount_jump2_jc2 = 0
    
    if (jumpstate == jstate_1hold) {
         framecount_jump1 = jcount;
    }
    else if (jumpstate == jstate_1wait) {
         framecount_pause = jcount;
    }
    
    jumpstate = jstate_2hold;
    jcount = 1;
}

if (global.frameaction_jumpslow) {
    if (jumpstate == jstate_1wait && wcount_1 <= 9 && framecount_jump1_jc2 != 0 && framecount_jump1_jc3 == 0)
    {
        framecount_jump1_jc3 = wcount_1;
    }
    if (jumpstate == jstate_1wait && wcount_1 <= 9 && framecount_jump1_jc1 != 0 && framecount_jump1_jc2 == 0)
    {
        framecount_jump1_jc2 = wcount_1;
    }
    if (jumpstate == jstate_1wait && wcount_1 <= 9 && framecount_jump1_jc1 == 0)
    {
          framecount_jump1_jc1 = wcount_1;
    }
    if (jumpstate == jstate_2wait && wcount_2 <= 7 && framecount_jump2_jc1 != 0 && framecount_jump2_jc2 == 0)
    {
          framecount_jump2_jc2 = wcount_2;
    }
    if (jumpstate == jstate_2wait && wcount_2 <= 7 && framecount_jump2_jc1 == 0)
    {
          framecount_jump2_jc1 = wcount_2;
    }
    if (jumpstate == jstate_1hold) {
         jumpstate = jstate_1wait;
         framecount_jump1 = jcount;
         jcount = 0;
    }
    else if (jumpstate == jstate_2hold) {
         jumpstate = jstate_2wait;
         framecount_jump2 = jcount;
    }
}

if ((jumpstate == jstate_2wait || jumpstate == jstate_1wait) && player_on_ground) {
    jumpstate = jstate_done;
    framecount_pause2 = jcount + 1;
}

// full frame jumps
if (flag_lastjumpframenext) {
    flag_lastjumpframenext = false;
    
    if (jumpstate == jstate_1hold) {
        jumpstate = jstate_1wait;
        framecount_jump1 = jcount;
    }
    else if (jumpstate == jstate_2hold) {
         jumpstate = jstate_2wait;
         framecount_jump2 = jcount;
    }
    jcount = 0;
}

if (instance_exists(argument[0])) {
    var player_dy = argument[0].y - argument[0].yprevious;
    var moved_down = (global.grav == 1 && player_dy > 0) || (global.grav == -1 && player_dy < 0);
    
    if (moved_down && (jumpstate == jstate_1hold || jumpstate == jstate_2hold)
    && !global.frameaction_jumpslow) {
        flag_lastjumpframenext = true;
   }
}
