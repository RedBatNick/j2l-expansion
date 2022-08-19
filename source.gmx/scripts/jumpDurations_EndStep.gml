if(!instance_exists(oPlayer))
{
    exit;
}
	jcount += 1
if(jumpstate == jstate_1wait) wcount_1 +=1
else wcount_1 = 0

if(jumpstate == jstate_2wait) wcount_2 +=1
else wcount_2 = 0
	
var player_on_ground = false
with argument0 {
    player_on_ground = (place_meeting(x,y+global.grav,oBlock)
    and place_meeting(x,y+global.grav,oBlock))
}

if global.frameaction_jump {
    jumpstate = jstate_1hold
    framecount_jump1 = 0
    		framecount_jump1_jc = 0
    		framecount_jump1_jc2 = 0
    		framecount_jump1_jc3 = 0
	    framecount_pause = 0
	    framecount_jump2 = 0
    		framecount_jump2_jc = 0
    		framecount_jump2_jc2 = 0
	    framecount_pause2 = 0
	    jcount = 1
}
else if global.frameaction_djump {
    		framecount_jump2_jc = 0
    		framecount_jump2_jc2 = 0
	   if jumpstate == jstate_1hold {
	        framecount_jump1 = jcount
	   }
	   else if jumpstate == jstate_1wait {
        framecount_pause = jcount
	   }
	    jumpstate = jstate_2hold
	    jcount = 1
}

if global.frameaction_jumpslow {
    if(jumpstate == jstate_1wait && wcount_1<=9 && framecount_jump1_jc2 != 0 && framecount_jump1_jc3 == 0)
	   {
        			framecount_jump1_jc3 = wcount_1
		  }
    if(jumpstate == jstate_1wait && wcount_1<=9 && framecount_jump1_jc != 0 && framecount_jump1_jc2 == 0)
		  {
        			framecount_jump1_jc2 = wcount_1
		  }
		  if(jumpstate == jstate_1wait && wcount_1<=9 && framecount_jump1_jc == 0)
		  {
        			framecount_jump1_jc = wcount_1
		  }
		  if(jumpstate == jstate_2wait && wcount_2<=7 && framecount_jump2_jc != 0 && framecount_jump2_jc2 == 0)
		  {
        			framecount_jump2_jc2 = wcount_2
		  }
		  if(jumpstate == jstate_2wait && wcount_2<=7 && framecount_jump2_jc == 0)
		  {
        			framecount_jump2_jc = wcount_2
		  }
	   if jumpstate == jstate_1hold {
        jumpstate = jstate_1wait
	        framecount_jump1 = jcount
	        jcount = 0
	   }
	   else if jumpstate == jstate_2hold {
        jumpstate = jstate_2wait
	        framecount_jump2 = jcount
	   }
}

if (jumpstate == jstate_2wait or jumpstate == jstate_1wait) and player_on_ground {
    jumpstate = jstate_done
    framecount_pause2 = jcount + 1
}

// full frame jumps
if flag_lastjumpframenext {
    flag_lastjumpframenext = false
    if jumpstate == jstate_1hold {
        jumpstate = jstate_1wait
	        framecount_jump1 = jcount
	   }
	   else if jumpstate == jstate_2hold {
        jumpstate = jstate_2wait
	        framecount_jump2 = jcount
	   }
	    jcount = 0
}

if instance_exists(argument0) {
    var player_dy = argument0.y - argument0.yprevious
    var moved_down = (global.grav == 1 and player_dy > 0)
                    or (global.grav == -1 and player_dy < 0)
    if moved_down and (jumpstate == jstate_1hold or jumpstate == jstate_2hold)
    and not global.frameaction_jumpslow {
        flag_lastjumpframenext = true
	   }
}
