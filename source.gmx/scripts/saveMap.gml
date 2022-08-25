var filename = argument[0];
if (!global.BackupFailSafe)
    oEdit.undo_nochanges = true;
global.BackupFailSafe = false;

var map = ds_map_create();

// version
var vers = ds_list_create();
var index = 0;
vers[| index] = ds_map_create();
var ver = vers[| index];
ver[? "VerName"] = global.version_name;
ver[? "VerMajor"] = global.version_major;
ver[? "VerMinor"] = global.version_minor;
ver[? "VerPatch"] = global.version_patch;
ds_list_mark_as_map(vers, index);
index++;
ds_map_add_list(map, "Version", vers);

// transformations
var forms = ds_list_create();
var index = 0;
forms[| index] = ds_map_create();
var form = forms[| index];
form[? "Dot"] = global.dotkid;
form[? "VVV"] = global.vkid;
form[? "Tele"] = global.telekid;
form[? "Lunar"] = global.lunarkid;
form[? "Line"] = global.linekid;
ds_list_mark_as_map(forms, index);
index++;
ds_map_add_list(map, "KidType", forms);

// save types
var saves = ds_list_create();
var index = 0;
saves[| index] = ds_map_create();
var save = saves[| index];
save[? "Z"] = global.savetypez;
save[? "Shoot"] = global.savetypeshoot;
save[? "S"] = global.savetypes;
save[? "Touch"] = global.savetypetouch;
ds_list_mark_as_map(saves, index);
index++;
ds_map_add_list(map, "SaveType", saves);

// physics
var physics = ds_list_create();
var index = 0;
physics[| index] = ds_map_create();
var physic = physics[| index];
physic[? "InfJump"] = global.infinitejump;
physic[? "IceType"] = global.icetype;
physic[? "SlowShot"] = global.slowshot;
ds_list_mark_as_map(physics, index);
index++;
ds_map_add_list(map, "Physics", physics);

// border types
var borders = ds_list_create();
var index = 0;
borders[| index] = ds_map_create();
var border = borders[| index];
border[? "Collision"] = global.bordertype;
border[? "BorderBox"] = global.borderbox;
border[? "Screenwrap"] = global.screenwraptype;
ds_list_mark_as_map(borders, index);
index++;
ds_map_add_list(map, "BorderType", borders);

// interactions
var actions = ds_list_create();
var index = 0;
actions[| index] = ds_map_create();
var action = actions[| index];
action[? "DotClip"] = global.dotclip;
action[? "DotPlatfix"] = global.dotplatfix;
action[? "TeleRange"] = global.telerange;
ds_list_mark_as_map(actions, index);
index++;
ds_map_add_list(map, "Interactions", actions);

// player values
var players = ds_list_create();
var index = 0;
players[| index] = ds_map_create();
var player = players[| index];
player[? "X"] = global.savePlayerX;
player[? "Y"] = global.savePlayerY;
player[? "XScale"] = global.savePlayerXScale;
player[? "Grav"] = global.saveGrav;
player[? "Angle"] = global.savePlayerAngle;
ds_list_mark_as_map(players, index);
index++;
ds_map_add_list(map, "Player", players);

// objects
var objects_out_of_range = false;
var objects_unrecognized = false;
var max_pos = 896;
var min_pos = -128;
var objects = ds_list_create();
var index = 0;

with (all) {
    if (!objectInPalette(object_index)) {
        continue;
    }
    
    if (xstart >= max_pos || ystart >= max_pos || xstart < min_pos || ystart < min_pos) {
        objects_out_of_range = true;
        continue;
    }
    
    var save_id = objectToSaveID(object_index);
    
    if (save_id == -1) {
        objects_unrecognized = true;
        continue;
    }
    
    objects[| index] = ds_map_create();
    var object = objects[| index];
    //positional values
    object[? "X"] = xstart;
    object[? "Y"] = ystart;
    
    //image values
    if (image_xscale != 1)
        object[? "XScale"] = image_xscale;
        
    if (image_yscale != 1)
        object[? "YScale"] = image_yscale;
        
    if (image_angle != 0)
        object[? "Angle"] = image_angle;
          
    //movement values
    if (direction != 0)
        object[? "Dir"] = direction;
    
    if (speed != 0)
        object[? "Spd"] = speed;
        
    if (gravity_direction != 270)
        object[? "Grvdir"] = gravity_direction;
        
    if (gravity != 0)
        object[? "Grv"] = gravity;
        
    if (friction != 0)
        object[? "Fric"] = friction;
        
    //final save
    object[? "ID"] = save_id;
    ds_list_mark_as_map(objects, index);
    index++;
}

ds_map_add_list(map, "Objects", objects);

var data = "Save#" + json_encode(map);
//var buffer = buffer_create(string_byte_length(data), buffer_fixed, 1);
//buffer_seek(buffer, buffer_seek_start, 0);
//buffer_write(buffer, buffer_text, data);
//buffer_save(buffer, filename);
//buffer_delete(buffer);
var file = file_text_open_write(filename);
file_text_write_string(file, data);
file_text_close(file);
ds_map_destroy(map);

// warning messages for oob or unrecognized objects
var warning_message = "";
if (objects_unrecognized) {
    warning_message += "Warning: Some objects were not official and weren't saved.";
}
if (objects_out_of_range) {
    warning_message = "Warning: Some objects were out of range and weren't saved."
        +"#(x or y < "+string(min_pos)+" or >= "+string(max_pos)+")";
}
if (warning_message != "") {
    inputOverlay(input_info,false,warning_message);
}

return true;
