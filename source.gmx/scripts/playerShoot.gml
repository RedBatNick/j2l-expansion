var bullet, bulletCap, shotSnd;
    
    if (!global.telekid) 
    { 
        bullet = oPlayerBullet; 
        shotSnd = sndShoot;
        
        if (!global.slowshot) { bulletCap = 4; }
        else { bulletCap = 10; }
    }
    else 
    { 
        bullet = oPlayerTeleport; 
        shotSnd = sndTeleport;
        
        if (!place_meeting(x+(global.telerange*global.player_xscale),y,oBlock))
            bulletCap = 1;
        else 
            bulletCap = 0;
    }

if (instance_number(bullet) < bulletCap) {
    var bx = x, by = y;
    if (global.dotkid) { by = y - 6 * global.grav; }
    
    if (global.lunarkid) { 
        bx = (x - lengthdir_x(16, (image_angle + 90)));
        by = (y - lengthdir_y(16, (image_angle + 90)));
    }

    var b = instance_create(bx,by,bullet);
    audio_play_sound(shotSnd,0,0);
}
