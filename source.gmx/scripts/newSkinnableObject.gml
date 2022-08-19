///newSkinnableObject(object, file, animspeed)
var obj = argument[0];
var animspeed = 1;

if (argument_count >= 3) {
    animspeed = argument[2];
}

var skinnable = ds_map_create();
ds_map_add_map(global.skinnable_objects, object_get_name(obj), skinnable);
var spr = object_get_sprite(obj);
var dupl = skinnableDefault(spr);
object_set_mask(obj, dupl);
skinnable[? "Sprite"] = spr;
skinnable[? "File"] = argument[1] + ".png";
skinnable[? "Default"] = dupl;
skinnable[? "Speed"] = animspeed;
skinnable[? "DefaultSpeed"] = animspeed;
