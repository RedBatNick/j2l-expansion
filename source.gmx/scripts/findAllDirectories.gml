///findAllDirectories(path, extension, found)
var path = argument[0];
var extension = argument[1];
var found = argument[2];
var deep = 0;

if (argument_count >= 4) {
    deep = argument[3];
}

if (deep == 10) {
    show_debug_message("Folder tree is too big.");
    return 0;
}

var directories = ds_list_create();

for (var f = file_find_first(path + "\*.", fa_directory); f != ""; f = file_find_next()) {
    show_debug_message("Test: " + f);
    
    if (string_count(extension, f) > 0) {
        ds_list_add(found, path + "\" + f);
    } else {
        ds_list_add(directories, f);
    }
}

file_find_close();

for (var i = 0; i < ds_list_size(directories); i++) {
    findAllDirectories(path + "\" + directories[| i], extension, found, deep + 1);
}

ds_list_destroy(directories);
