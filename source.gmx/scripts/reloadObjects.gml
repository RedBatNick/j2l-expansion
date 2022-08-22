// Player.
with (oDomuIce) { slipSpeed = 0; }


// Platforms.
with (oDisappearPlatform) { count = 0; }


// Killers.
with (oKiller) { highlight_count = 1000; }


// Water.
with (oWaterDisappear)
{
    image_alpha = 1;
    alarm[0] = -1;
    active = 1;
}


// Vapor.
with (oUpdraft) { drafted = false; }


// Boosters.
with (oBoosterUpRefresher) { image_alpha = 1; }
with (oBoosterDownRefresher) { image_alpha = 1; }


// Refreshers.
with (oJumpRefresher) { count = 0; }
with (oShootRefresher) { image_index = 0; }


// Saves.
with (oSave)
{
    drawtext = 0;
    arrowVis = 0;
    state = 0;
    
    with (oPlayer)
        frozen = 0;
}


// Warps.
with (oWarp) { highlight_count = 1000; }
