with (oRecordPlayer) { instance_destroy(); }

//screen_save_part("Screenie.png",0,0,display_get_width(),display_get_height())
global.continueclicked = true;
global.paused = true;
//global.continueclicked = false
//Background = sprite_add("Screenie.png", 0, false, true, 0, 0);
//loadPlayer()
with (oPlayer) 
    djump = global.continuedjump;

with (oDisappearPlatform) { count = 0; }
with (oJumpRefresher) { count = 0; }
with (oKiller) { highlight_count = 1000; }
with (oWarp) { highlight_count = 1000; }

//codable_room_restart()

//clearRecordList();

global.record = 1;
