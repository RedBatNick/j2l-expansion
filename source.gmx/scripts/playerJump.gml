if (!global.vkid) 
{
    if ((!place_free(x, y + global.grav) || onPlatform || onLadder || place_meeting(x,y+global.grav,oWater) || place_meeting(x, y, oPlatform)) && numJumps > 0) 
    {
        vspeed = -jump;
        djump = numJumps-1;
    
        audio_play_sound(sndJump,0,0);
        global.frameaction_jump = true;
    }
    else if ((djump > 0 || place_meeting(x,y+global.grav,oWater2) || place_meeting(x,y+global.grav,oWater3) || global.infinitejump) && numJumps > 1) 
    {
        if (teled = 1) //teleport djump
        {
            teled = 0;
            
            var xx = 96*global.player_xscale;
            if (place_free(x+xx,y)) {
                x += xx;
            }
            
            xprevious = x;
            yprevious = y;
            audio_play_sound(sndPew, 0, false);
        }
        
        if (fastd = 1) //fast djump
        {
            maxSpeed = 6;
            fastd = 2;
        }
        
        if (switchd = 1) //switch djump
        {
            switchd = false;
            audio_play_sound(sndRedCoin, 0, false);
            /*if (instance_exists(objKillerTrigger))
            {
                with (objKillerTrigger) 
                    if (refresh > -1) { event_user(0); }
            }*/
        }
        
        if (slowd = 1) //slow djump
        {
            slowd = 2;
            if (!instance_exists(oSlowJumpEffect))
                instance_create(0,0,oSlowJumpEffect);
        }
        else
        {
            if (instance_exists(oSlowJumpEffect))
                with (oSlowJumpEffect) { instance_destroy(); }
        }
        
        if (flipd = 1) //flip djump
        { 
            flipGravity();
            flipd = 2;
        }
        
        vspeed = -jump2;
        highd = 2; 
        lowd = 2;
        playerSprite(sPlayerJump);
        
        audio_play_sound(sndDJump,0,0);
        global.frameaction_djump = true;
        
        if (!place_meeting(x,y+global.grav,oWater3))
        {
            if (djump > 0)
                djump -= 1;
        }
        else {
            djump = numJumps-1;
        }
    }
} 
else 
{
    if (!global.lunarkid) 
    {
        if (!place_free(x, y + global.grav) || onPlatform)
        {
            if (global.vkid = 1) { flipGravity(); }
            /*else if (global.VKid = 2)
            {
                scrFlipXGrav();
                if (!global.Xgrav) 
                {
                    if (global.grav == 1)
                        scrFlipGrav();
                    else if (global.grav == -1)
                        scrFlipGrav();
                }
            }*/
            
            vspeed = jump;

            if (sign(global.grav) == -1) 
                audio_play_sound(sndVFlip1, 0, false); 
            else
                audio_play_sound(sndVFlip2, 0, false);
        }
    } 
    else {
        gravity_direction += 180/global.vkid;
    }
}
