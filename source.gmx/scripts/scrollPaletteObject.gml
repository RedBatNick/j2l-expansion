///scrollPaletteObject()
var scroll = (mouse_wheel_down() - mouse_wheel_up());

if (scroll == 0) {
    return 0;
}

var obj_palette = global.palette[| selected_index];
var cycle_objects = obj_palette[? "Cycle"];
var length = array_length_1d(cycle_objects);
selected_cycle = (selected_cycle + length + scroll) % length;
selected_object = cycle_objects[selected_cycle];
selected_sprite = object_get_sprite(selected_object);
