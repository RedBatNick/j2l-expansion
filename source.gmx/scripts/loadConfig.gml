// Load the currently set options from a previously saved ini file.

var filename = prefix_project_path_if_needed("config.ini");
ini_open(filename);

//player
global.drawbow = ini_read_real("prefs","drawbox",false);
global.deathEnabled = ini_read_real("prefs","death",false);
global.showhitbox = ini_read_real("prefs","showhitbox",0);
global.dotkidoutline = ini_read_real("prefs","dotkidoutline",true);
global.savesubpixel = ini_read_real("prefs","savesubpixel",true);

//sidebar
global.hidesidebar = ini_read_real("prefs","hidesidebar",false);
global.editorinstructions = ini_read_real("prefs","editorinstructions",true);
oEdit.snap = ini_read_real("prefs","gridsnap",32);
global.sidebarlevel = ini_read_real("prefs","sidebarlevel",0);
//global.playerpos_extended = ini_read_real("prefs","playerpos_extended",false);
var length = ini_read_real("prefs", "grouplength", 0);

for (var i = 0; i < length; i++) {
    global.group_hidden[i] = ini_read_real("prefs", "grouphidden[" + string(i) + "]", true);
}

//screen
window_set_fullscreen(ini_read_real("prefs","fullscreen",false)); oWorld.alarm[0] = 1;
global.grid_draw = ini_read_real("prefs","grid_draw",false);
global.grid_sync = ini_read_real("prefs","grid_sync",true);
global.mousecoords = ini_read_real("prefs","mousecoords",false);
var depthstring = ini_read_string("prefs","depthorder","0,1,2,3");
global.skinName = ini_read_string("prefs","skin","pat_default");

//system
global.hotkeylock = ini_read_real("prefs","hotkeylock",0);
global.airsaving = ini_read_real("prefs","airsaving",true);
global.worldtime = ini_read_real("prefs","worldtime",false);
global.backup = ini_read_real("prefs","backup",true);
global.checkupdates = ini_read_real("prefs","checkupdates",false);

//keyboard controls
scrControls("loadKeyboardConfig");

//menu keys (not rebindable)
global.menuLeftButton[0] = vk_left;
global.menuRightButton[0] = vk_right;
global.menuUpButton[0] = vk_up;
global.menuDownButton[0] = vk_down;
global.menuAcceptButton[0] = vk_shift;
global.menuBackButton[0] = ord("Z");
global.menuOptionsButton[0] = vk_enter;

if (global.controllerEnabled)
{
    //controller options
    scrControls("loadControllerConfig");
}

//menu buttons (not rebindable)
global.menuLeftButton[1] = gp_padl;
global.menuRightButton[1] = gp_padr;
global.menuUpButton[1] = gp_padu;
global.menuDownButton[1] = gp_padd;
global.menuAcceptButton[1] = gp_face1;
global.menuBackButton[1] = gp_face2;
global.menuOptionsButton[1] = gp_select;

ini_close();

saveConfig();

if (string_count(",",depthstring) != 3) 
    depthstring = "0,1,2,3";
    
ds_list_clear(global.depthList);
for (var i = 0; i < 4; i+=1) 
{
    ds_list_add(global.depthList, real(splitDelimString(depthstring, ",", i)));
}
updatePaletteDepths();
global.skinList = array_create(0);

var skinsfolder = prefix_project_path_if_needed("skins/");
var filename = skinsfolder + "skins.ini";

if (!directory_exists(skinsfolder)) {
    directory_create(skinsfolder);
}

ini_open(filename);
var str = ini_read_string("skins", "names", "");
ini_close();

if (str != "") 
{
    var name = "";
    var index = 0;
    
    for (var i = 1; i <= string_length(str); i+=1) 
    {
        var char = string_char_at(str, i);
        
        if (char == "," || i == string_length(str)) 
        {
            if (i == string_length(str))
            {
                name += char;
            }
        
            global.skinList[index++] = name;
            name = "";
            continue;
        }
        
        name += char;
    }
} 
else 
{
    ini_open(filename);
    ini_write_string("skins", "names", "skin1,skin2,skin3,skin4");
    ini_close();
    inputOverlay(input_info, false, "skins/skins.ini has no skin folder names.#Please add some!");
}

loadSkin(global.skinName);
