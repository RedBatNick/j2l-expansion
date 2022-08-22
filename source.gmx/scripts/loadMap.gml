// Deletes all palette objects and loads a map from file.

var filename = argument[0];
var f = file_text_open_read(filename);

var save_check = file_text_read_string(f);
file_text_close(f);

if (string_copy(save_check, 1, 5) != "Save#")
{
    loadOldMap(filename);
    inputOverlay(input_info,false,"Warning: Map was made using an old format;#please resave the map once you are finished.");
    return 0;
}

var buffer = buffer_load(filename);
buffer_seek(buffer, buffer_seek_start, 0);
var map = json_decode(string_delete(buffer_read(buffer, buffer_text), 1, 5));
buffer_delete(buffer);

// version
var vers = map[? "Version"];

for (var i = 0; i < ds_list_size(vers); i+=1) 
{
    var ver = vers[| i];
    var mapver_name = ver[? "VerName"];
    var mapver_major = ver[? "VerMajor"];
    var mapver_minor = ver[? "verMinor"];
    var mapver_patch = ver[? "verPatch"];
}

//transformations
var forms = map[? "KidType"];

for (var i = 0; i < ds_list_size(forms); i+=1) 
{
    var form = forms[| i];
    global.dotkid = form[? "Dot"];
    global.vkid = form[? "VVV"];
    global.telekid = form[? "Tele"];
    global.lunarkid = form[? "Lunar"];
    global.linekid = form[? "Line"];
}

//save types
var saves = map[? "SaveType"];

for (var i = 0; i < ds_list_size(saves); i+=1) 
{
    var save = saves[| i];
    global.savetypez = save[? "Z"];
    global.savetypeshoot = save[? "Shoot"];
    global.savetypes = save[? "S"];
    global.savetypetouch = save[? "Touch"];
}

//physics
var physics = map[? "Physics"];

for (var i = 0; i < ds_list_size(physics); i+=1) 
{
    var physic = physics[| i];
    global.infinitejump = physic[? "InfJump"];
    global.icetype = physic[? "IceType"];
    //global.speedtype = physic[? "SpeedType"];
    //global.gravtype = physic[? "GravType"];
    global.slowshot = physic[? "SlowShot"];
}

//borders
var borders = map[? "BorderType"];

for (var i = 0; i < ds_list_size(borders); i+=1) 
{
    var border = borders[| i];
    global.bordertype = border[? "Collision"];
    global.borderbox = border[? "BorderBox"];
    global.screenwraptype = border[? "Screenwrap"];
}

//interactions
/*
var actions = map[? "Interactions"];

for (var i = 0; i < ds_list_size(actions); i+=1) 
{
    var action = actions[| i];
    global.dotclip = action[? "DotClip"];
    global.dotplatfix = action[? "DotPlatfix"];
    global.telerange = action[? "TeleRange"];
}*/

//player values
var players = map[? "Player"];

for (var i = 0; i < ds_list_size(players); i+=1) 
{
    var player = players[| i];
    global.savePlayerX = player[? "X"];
    global.savePlayerY = player[? "Y"];
    global.savePlayerXScale = player[? "XScale"];
    global.saveGrav = player[? "Grav"];
    global.savePlayerAngle = player[? "Angle"];
}

// version
if (mapver_name != global.version_name)
{
    inputOverlay(input_info,false,"Not a valid jtool map.");
    exit;
}

show_debug_message(string(filename)+":"+string(mapver_major)+"."+string(mapver_minor)+"."+string(mapver_patch))
if (mapver_major < global.version_major)
{
    inputOverlay(input_info,false,"Warning: may not be compatible with map;#it has a new major version.");
}

//objects
with (oEdit) 
{
    clearUndoStack();
    undo_nochanges = true;
}

with (all) 
{
    if (objectInPalette(object_index)) {
        instance_destroy();
    }
}

instance_destroy(oPatBall);

var objects = map[? "Objects"];

for (var i = 0; i < ds_list_size(objects); i+=1) 
{
    var object = objects[| i];
    //positional values
    var xx = object[? "X"];
    var yy = object[? "Y"];

    //image values
    var xscale = object[? "XScale"];
    var yscale = object[? "YScale"];
    var angle = object[? "Angle"];
    
    //movement values
    var dir = object[? "Dir"];
    var spd = object[? "Spd"];
    var grvdir = object[? "Grvdir"];
    var grv = object[? "Grv"];
    var fric = object[? "Fric"];
    
    //final load
    var load_id = object[? "ID"];
    o = instance_create(xx, yy, saveIDToObject(load_id));
    
    if (!is_undefined(xscale))
        o.image_xscale = xscale; 
        
    if (!is_undefined(yscale))
        o.image_yscale = yscale;
        
    if (!is_undefined(angle))
        o.image_angle = angle;
    
    if (!is_undefined(dir))
        o.direction = dir; 
    
    if (!is_undefined(spd))
        o.speed = spd;
    
    if (!is_undefined(grvdir))
        o.gravity_direction = grvdir;
        
    if (!is_undefined(grv))
        o.gravity = grv;
        
    if (!is_undefined(fric))
        o.friction = fric;
}

ds_map_destroy(map);

room_speed = 50;
global.death_count = 0;
loadPlayer();
completelyResetZoom();

if (global.shouldresetloadedmapname) 
{
    global.shouldresetloadedmapname = false;
    global.lastloadedmapname = "";
    updateCaption();
}
else 
{
    global.lastloadedmapname = splitDelimString(filename, "\", string_count("\", filename));
    updateCaption();
}
