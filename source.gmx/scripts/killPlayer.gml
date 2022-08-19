if (instance_exists(oPlayer) && global.deathEnabled != 0) 
{
    if (oPlayer.image_alpha = 1)
    {
        audio_play_sound(sndDeath,0,0);
        global.death_count += 1;
        
        with (oPlayer) 
        {
            if (global.deathEnabled == 1) 
            {
                repeat(200) 
                    instance_create(x,y,oPlayerBlood);
                
                instance_destroy();
            }
            else if (global.deathEnabled == 2) 
            {
                hit = 50;
                hitX = x;
                hitY = y;
                image_alpha = 0.7;
            }
            else if (global.deathEnabled == 3)
                loadPlayer();
        }
    }
}
