///newMenuPanel(label_id, title, buttons)
var label_id = argument[0];
var map = ds_map_create();
ds_map_add_map(global.panel, label_id, map);
var buttons = ds_list_create();

for (var i = 2; i < argument_count; i++) {
    buttons[| i - 2] = argument[i];
    ds_list_mark_as_map(buttons, i - 2);
}

map[? "Title"] = argument[1];
map[? "Buttons"] = buttons;
ds_map_add_list(map, "Buttons", buttons);
