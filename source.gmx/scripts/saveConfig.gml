// Save the currently set options to an ini file.

var depthstring = "";
for (var i = 0; i < ds_list_size(global.depthList); i+=1) 
{
    depthstring += string(ds_list_find_value(global.depthList,i));
    if (i != ds_list_size(global.depthList) - 1) 
        depthstring += ",";
}

var filename = prefix_project_path_if_needed("config.ini");
ini_open(filename);

//player
ini_write_real("prefs","death",global.deathEnabled);
ini_write_real("prefs","showhitbox",global.showhitbox);
ini_write_real("prefs","dotkidoutline",global.dotkidoutline);
ini_write_real("prefs","savesubpixel",global.savesubpixel);

//sidebar
ini_write_real("prefs","hidesidebar",global.hidesidebar);
ini_write_real("prefs","editorinstructions",global.editorinstructions);
ini_write_real("prefs","gridsnap",oEdit.snap);
ini_write_real("prefs","sidebarlevel",global.sidebarlevel);
//ini_write_real("prefs","playerpos_extended",global.playerpos_extended);
ini_write_real("prefs", "grouplength", array_length_1d(global.group_hidden));

for (var i = 0; i < array_length_1d(global.group_hidden); i++) {
    ini_write_real("prefs", "grouphidden[" + string(i) + "]", global.group_hidden[i]);
}

//screen
ini_write_real("prefs","fullscreen",window_get_fullscreen());
ini_write_real("prefs","grid_draw",global.grid_draw);
ini_write_real("prefs","grid_sync",global.grid_sync);
ini_write_real("prefs","mousecoords",global.mousecoords);
ini_write_string("prefs","depthorder",depthstring);
ini_write_string("prefs","skin",global.skinName);

//system
ini_write_real("prefs","hotkeylock",global.hotkeylock);
ini_write_real("prefs","airsaving",global.airsaving);
ini_write_real("prefs","worldtime",global.worldtime);
ini_write_real("prefs","backup",global.backup);
ini_write_real("prefs","checkupdates",global.checkupdates);

//keyboard controls
scrControls("saveKeyboardConfig");

if (global.controllerEnabled)
{
    scrControls("saveControllerConfig");
}

ini_close();
