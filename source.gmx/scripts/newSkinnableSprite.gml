///newSkinnableSprite(sprite, file)
var spr = argument[0];
var skinnable = ds_map_create();
ds_map_add_map(global.skinnable_objects, sprite_get_name(spr), skinnable);
var dupl = skinnableDefault(spr);
skinnable[? "Sprite"] = spr;
skinnable[? "File"] = argument[1] + ".png";
skinnable[? "Default"] = dupl;
