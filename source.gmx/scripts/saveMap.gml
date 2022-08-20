// Saves all the present palette objects to file.

filename = get_save_filename_ext('jtool map|*.jmap','','','Save Map')
if (filename == '') 
    return false;

var success;
if (argument_count == 0) {
    success = saveMapName(filename)
} else {
    type = argument[0];
    
    switch(type)
    {
        case 'legacy':
        success = saveOldJMapName(filename);
        break;
        
        case 'ctool':
        success = saveCMapName(filename);
        break;
    }
}

if (success)
{
    global.lastloadedmapname = splitDelimString(filename, '\', string_count('\', filename));
    updateCaption();
    deleteBackup();
}
return success;
