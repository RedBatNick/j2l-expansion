///skinnableImage();
var skinnable = global.skinnable_objects[? object_get_name(object_index)];
var animspeed = skinnable[? "Speed"];

if (animspeed == undefined) {
    animspeed = 1;
}

image_speed = animspeed;
//image_index = floor((global.count % (sprite_get_number(sprite_index) / animspeed)) * animspeed);
