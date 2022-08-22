// Load the specified skin from file into the game.

var skin_name = argument[0];

var skinfolder = prefix_project_path_if_needed("skins\"+skin_name+"\");
var ini_filename = skinfolder+"skin_config.ini";
var missing_ini_filename = prefix_project_path_if_needed("skin_config_missing.ini");

if (!directory_exists(skinfolder)) 
{
    inputOverlay(input_info,false,"Couldn't find skin folder#"+skinfolder);
    ini_filename = missing_ini_filename;
}
else if (!file_exists(ini_filename)) 
{
    inputOverlay(input_info,false,"Warning: "+ini_filename+" does not exist.");
}
ini_open(ini_filename);

// meta
var skinver_string = ini_read_string("meta","version","");
if (skinver_string == "") {
    //inputOverlay(input_info,false,"Warning: no version provided in skin.")
}
else 
{
    var skinver_major = real(splitDelimString(skinver_string,".",0));
    if (skinver_major > global.version_major) {
        //inputOverlay(input_info,false,"Warning: may not be not compatible with skin;#it has a new major version.")
    }
}

// ui
global.color_button = colorFromHsvDelimString(ini_read_string("ui","button_idle_color","0,0,175"),",");
global.color_buttonhover = colorFromHsvDelimString(ini_read_string("ui","button_active_color","0,0,255"),",");
global.color_palettepressed = colorFromHsvDelimString(ini_read_string("ui","button_palette_pressed_color","0,0,0"),",");

global.buttonhoveralpha = FSIniReadReal("ui","button_active_alpha",0.5);
global.buttonpalettepressedalpha = FSIniReadReal("ui","button_palette_pressed_alpha",0.5);
global.buttonhoverborder = FSIniReadReal("ui","button_active_border",false);

// objects
var colorstring = ini_read_string("objects","killer_idle_color","0,0,255");
global.color_killerhue = real(splitDelimString(colorstring,",",0));
global.color_killersat = real(splitDelimString(colorstring,",",1));
global.color_killerval = real(splitDelimString(colorstring,",",2));
global.color_killer = colorFromHsvDelimString(colorstring,",");

var colorstring = ini_read_string("objects","killer_active_color","0,128,255");
global.color_killer2hue = real(splitDelimString(colorstring,",",0));
global.color_killer2sat = real(splitDelimString(colorstring,",",1));
global.color_killer2val = real(splitDelimString(colorstring,",",2));
global.color_killer2 = colorFromHsvDelimString(colorstring,",");

global.color_warp = colorFromHsvDelimString(ini_read_string("objects","warp_color","67,196,239"),",");
global.bulletblockeralpha = FSIniReadReal("objects","bulletblocker_alpha",0.3)

// bg
var bg_type = ini_read_string("bg","type","stretch");
var bg_hspeed = FSIniReadReal("bg","hspeed",0);
var bg_vspeed = FSIniReadReal("bg","vspeed",0);
var bg_x = FSIniReadReal("bg","x",0);
var bg_y = FSIniReadReal("bg","y",0);

ini_close();
file_delete(missing_ini_filename);


// assign sprites from file
var resource_add_errors = "";
for (var key = ds_map_find_first(global.skinnable_objects); key != undefined; key = ds_map_find_next(global.skinnable_objects, key)) 
{
    var skinnable = global.skinnable_objects[? key];
    var spr_index = skinnable[? "Sprite"];
    var spr_default = skinnable[? "Default"]
    var file = skinnable[? "File"];
    var frames = skinnable[? "Frames"];
    var animspeed = skinnable[? "Speed"];
    
    if (file_exists(skinfolder + file)) {
        var copied_png = working_directory + "copied_skin_image.png";
        file_copy(skinfolder + file, copied_png);
        var dummy = sprite_add(copied_png, 1, false, false, 0, 0);
        var frames = sprite_get_width(dummy) / sprite_get_width(spr_default);
        sprite_delete(dummy);
        var spr = sprite_add(copied_png, frames, false, false, sprite_get_xoffset(spr_index), sprite_get_yoffset(spr_index));
        file_delete(copied_png);
        
        if (spr != -1) {
            sprite_assign(spr_index, spr);
            sprite_delete(spr);
        } else {
            resource_add_errors += ", " + file;
            sprite_assign(spr_index, spr_default);
        }
        
        var name = sprite_get_name(spr_index);
        name = string_copy(name, 2, string_length(name) - 1);
        var dirs;
        dirs[0] = "Right";
        dirs[1] = "Up";
        dirs[2] = "Left";
        dirs[3] = "Down";
        
        for (var i = 0; i < 4; i+=1) 
        {
            if (string_count(name, dirs[i]) > 0) {
                name = string_replace(name, dirs[i], "");
            }
        }
        
        name = string_lower(name);
        skinnable[? "Speed"] = FSIniReadReal("objects", name + "_animspeed", skinnable[? "DefaultSpeed"]);
    } else {
        sprite_assign(spr_index, spr_default);
        skinnable[? "Speed"] = skinnable[? "DefaultSpeed"];
    }
}

// assign background from file
file = "bg.png";

if (file_exists(skinfolder+file)) 
{
    var copied_png = working_directory+"copied_skin_image.png";
    file_copy(skinfolder+file, copied_png);
    var bg = background_add(copied_png,false,false);
    file_delete(copied_png);
    
    if (bg != -1) 
    {
        background_assign(bgBackground,bg);
        background_delete(bg);
    }
    else 
    {
        resource_add_errors += ", "+file;
        background_assign(bgBackground,bgBackgroundDefault);
    }
}
else {
    background_assign(bgBackground,bgBackgroundDefault);
}

switch(bg_type)
{
    case "stretch":
    background_xscale = room_width/background_width;
    background_yscale = room_height/background_height;
    background_htiled = false;
    background_vtiled = false;
    break;

    case "tile": 
    background_xscale = 1;
    background_yscale = 1;
    background_htiled = true;
    background_vtiled = true;
    break;
}

background_hspeed = bg_hspeed;
background_vspeed = bg_vspeed;
background_x = bg_x;
background_y = bg_y;

if (resource_add_errors != "") {
    inputOverlay(input_info,false,"Error when adding resources:#"+resource_add_errors+"#Try double checking everything.");
}
