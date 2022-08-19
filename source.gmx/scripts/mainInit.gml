// Main init script that should be called once upon game start.

/* tell if we're running from the editor or from the compiled game,
   since that function isn't built into gm.
   the editor directory is similar to this:
   C:\Users\User\AppData\Local\Temp\gm_ttt_881\gm_ttt_30167\
   this assumes the user doesn't have their own folder containing "gm_ttt",
   but I think that's a safe assumption.
*/
global.run_from_editor = string_pos('gm_ttt',working_directory) != 0
global.editor_project_path = 'C:\Users\redba\Downloads\j2l 1.0.0\source.gmx'

// add backslash to end
if (string_char_at(global.editor_project_path,string_length(global.editor_project_path)) != '\') {
    global.editor_project_path += '\';
}
if (global.run_from_editor && !directory_exists(global.editor_project_path)) {
    show_message("The editor project path you specified doesnt exist!#Edit the variable in the misc/mainInit script.");
    game_end();
}

window_command_hook(window_command_close);


// global state
global.state = globalstate_idle; //keeps track of what features are currently active
global.comboboxselected = false; //keeps track of whether or not the palette options (speed, grid, etc.) are active
global.count = 0; //keeps track of global time
global.frameaction_jump = false; //keeps track of whether a single jump is happening
global.frameaction_djump = false; //keeps track of whether a double jump is happening
global.frameaction_jumpslow = false; //keeps track of whether a cancel is happening
global.joketitleindex = 0; // used in buttonCallback_JokeTitle


// version 
global.version_name = 'jtool';
global.version_major = 2;
global.version_minor = 0;
global.version_patch = 0;
global.version_string = string(global.version_major)+'.'+string(global.version_minor)+'.'+string(global.version_patch);


// text input
global.input_string = '';
global.input_bool = false;
global.input_cancel = false;


//backups
global.backup_period = 5*60*50;
alarm[5] = global.backup_period;

global.BackupFailSafe = false;
global.shouldresetloadedmapname = false;
global.lastloadedmapname = false;


//player values
global.savePlayerX = 0;
global.savePlayerY = 0;

global.player_xscale = 1; // setting the player's xscale causes physics issues
global.savePlayerXScale = 1;

global.grav = 1;
global.saveGrav = 1;

global.playerAngle = 0;
global.savePlayerAngle = 0;


//transformations
global.dotkid = 0;
global.vkid = 0;
global.telekid = 0;
global.linekid = 0;
global.lunarkid = 0;


//save types
global.savetype = savetype_touch; //variable retained for legacy export

global.savetypez = 1;
global.savetypeshoot = 1;
global.savetypes = 0;
global.savetypetouch = 0;


//physics
global.infinitejump = false;
global.icetype = icetype_none;
global.slippage = 0;
global.slowshot = false;


//border types
global.bordertype = bordertype_death;
global.borderbox = bboxtype_center;
global.screenwraptype = wraptype_none;


//interactions
global.dotclip = true;
global.dotplatfix = false;
global.telerange = 12;


//preference options
global.depthList = ds_list_create();
global.waterlocked = false;


// might load from config later
global.killer_holdduration = 12;
global.killer_fadeduration = 4;
global.restartWithDJump = true;
global.checkNudgeEarly = true;

global.controllerMode = false;  //keeps track of whether to use keyboard or controller
global.controllerDelay = -1;    //handles delay between switching between keyboard/controller so that the player can't use both at the same time

global.controllerEnabled = true;    //sets whether controllers are supported
global.controllerDelayLength = 0;   //sets the delay in frames in which the player can switch between keyboard/controller (can be set to 0 to disable delay)

initSkin();
loadConfig();

var backupFilename = prefix_project_path_if_needed('backup.jmap');
if (file_exists(backupFilename)) {
    loadMap(backupFilename);
    inputOverlay(input_info,false,'Jtool did not exit successfully.#Backup map has been loaded.');
}
else {
    loadStartupMap();
    if (global.checkupdates) {
        versionRequestId = http_get('https://raw.githubusercontent.com/patrickgh3/jtool/master/current-version.json');
    }
}

// misc
randomize();
display_set_gui_size(view_wport,view_hport);
window_set_caption(global.version_name);

global.record = false; // 0 = noone, 1 = record, 2 = play
global.recordList = ds_list_create();
global.recordX = 0;
global.recordY = 0;
global.recordGrav = 1;
global.recordXscale = 1;
global.recordVspeed = 0;
global.recordDjump = true;
global.continueclicked = false;
global.pausedX = 0;
global.pausedY = 0;
global.pausedgrav = 1;
global.pausedplayer_xscale = 1;
global.pausedVspeed = 0;
global.pausedDjump = true;

//Record Save State Variables
for (i = 5; i<=12; i+=1)
    global.recordListSS[i] = ds_list_create();

for (var i = 1; i < 101; i +=1)
    global.recordListRewind[i] = ds_list_create();

codable_initialize();
