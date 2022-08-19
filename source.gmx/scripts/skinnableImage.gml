///skinnableImage(obj)
var obj = object_index;

if (argument_count >= 1) {
    obj = argument[0];
}

var name = object_get_name(obj);

if (!ds_map_exists(global.skinnable_objects, name)) {
    return 0;
}

var skinnable = global.skinnable_objects[? name];
var animspeed = skinnable[? "Speed"];

if (animspeed == undefined) {
    animspeed = 1;
}

image_index = floor((global.count % (sprite_get_number(object_get_sprite(obj)) / animspeed)) * animspeed);
return image_index;
