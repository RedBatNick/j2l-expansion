///cyclePaletteObject(obj1, obj2, obj...)
var objects;
objects[0] = undefined;

for (var i = 0; i < argument_count; i++) {
    objects[i + 1] = argument[i];
}

return objects;
