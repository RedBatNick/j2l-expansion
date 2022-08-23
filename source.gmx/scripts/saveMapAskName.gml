// Saves all the present palette objects to file.

var filetype = "jtool";
if (argument_count == 1) {
    filetype = argument[0];
}
    
var filename;
var success; 

switch(filetype)
{
    case "ctool":
    filename = get_save_filename_ext("ctool map|*.cmap","","","Save Map")
    if (filename == "") 
        return false;
    
    success = saveOldJMapName(filename, "ctool");
    break;

    case "legacy":
    filename = get_save_filename_ext("jtool map|*.jmap","","","Save Map")
    if (filename == "") 
        return false;
    
    success = saveOldJMapName(filename, "jtool");
    break;
    
    case "jtool":
    filename = get_save_filename_ext("jtool map|*.jmap","","","Save Map")
    if (filename == "") 
        return false;
        
    success = saveMapName(filename);
    break;
}

if (success)
{
    global.lastloadedmapname = splitDelimString(filename, "\", string_count("\", filename));
    updateCaption();
    deleteBackup();
}
return success;
