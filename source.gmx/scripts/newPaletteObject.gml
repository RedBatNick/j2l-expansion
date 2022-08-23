///newPaletteObject(object, cycle, killer, tooltip, combo, group)
var index = ds_list_size(global.palette);
global.palette[| index] = ds_map_create();
ds_list_mark_as_map(global.palette, index);
var map = global.palette[| index];
var obj = argument[0];
map[? "Object"] = obj;
var list = argument[1];

if (list == undefined) {
    list = cyclePaletteObjects();
}

list[@ 0] = obj;
map[? "Cycle"] = list;
map[? "Killer"] = argument[2];
map[? "ToolTip"] = argument[3];
map[? "Combo"] = argument[4];
map[? "Group"] = argument[5];
