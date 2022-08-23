// Load the currently set options from a previously saved ini file.

var filename = prefix_project_path_if_needed("config.ini");
ini_open(filename);

//player
global.deathEnabled = FSIniReadReal("prefs","death",false);
global.showhitbox = FSIniReadReal("prefs","showhitbox",0);
global.dotkidoutline = FSIniReadReal("prefs","dotkidoutline",true);
global.savesubpixel = FSIniReadReal("prefs","savesubpixel",true);

//sidebar
global.hidesidebar = FSIniReadReal("prefs","hidesidebar",false);
global.editorinstructions = FSIniReadReal("prefs","editorinstructions",true);
global.sidebarstate = FSIniReadReal("prefs","sidebarstate",sidebar_standard);
oEdit.snap = FSIniReadReal("prefs","gridsnap",32);
global.sidebarlevel = FSIniReadReal("prefs","sidebarlevel",0);
//global.playerpos_extended = FSIniReadReal("prefs","playerpos_extended",false);

//screen
window_set_fullscreen(FSIniReadReal("prefs","fullscreen",false)); oWorld.alarm[0] = 1;
global.grid_draw = FSIniReadReal("prefs","grid_draw",false);
global.grid_sync = FSIniReadReal("prefs","grid_sync",true);
global.mousecoords = FSIniReadReal("prefs","mousecoords",false);
var depthstring = ini_read_string("prefs","depthorder","0,1,2,3");
global.skinName = ini_read_string("prefs","skin","pat_default");

//system
global.hotkeylock = FSIniReadReal("prefs","hotkeylock",0);
global.airsaving = FSIniReadReal("prefs","airsaving",true);
global.worldtime = FSIniReadReal("prefs","worldtime",false);
global.backup = FSIniReadReal("prefs","backup",true);
global.checkupdates = FSIniReadReal("prefs","checkupdates",true);

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
        
        if (char == ",") 
        {
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
