///newMenuPanel(title, 
var index = ds_list_size(global.panel);
global.panel[| index] = ds_map_create();
ds_list_mark_as_map(global.panel, index);
var map = global.palette[| index];
var tag = argument[0];
var spr = argument[1];

if (list == undefined) {
    
}
