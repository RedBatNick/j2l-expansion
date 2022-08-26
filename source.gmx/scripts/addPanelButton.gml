///addPanelButton(text, sprite, callback, [tooltip])
var map = ds_map_create();
map[? "Text"] = argument[0];
map[? "Icon"] = argument[1];
map[? "Callback"] = argument[2];
map[? "Active"] = true;

if (argument_count >= 4) {
    map[? "Tooltip"] = argument[3];
}

return map;
