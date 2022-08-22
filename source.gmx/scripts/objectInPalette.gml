///objectInPalette(object)
var obj = argument[0];

for (var i = 0; i < ds_list_size(global.palette); i++) {
    var obj_palette = global.palette[| i];

    if (obj_palette[? "Object"] == obj) {
        return true;
    }

    var cycle = obj_palette[? "Cycle"];

    if (cycle == undefined) {
        continue;
    }

    for (var j = 0; j < array_length_1d(cycle); j++) {
        if (cycle[j] == obj) {
            return true;
        }
    }
}

return false;
