var filetype = "jtool";
if (argument_count == 1) {
    filetype = argument[0];
}

var filename;
    
switch(filetype)
{
    case "ctool":
    filename = get_open_filename_ext("ctool map|*.cmap","","","Open Map");
    if (filename == "") 
        exit;
    
    loadCMap(filename);
    break;
    
    case "legacy":
    filename = get_open_filename_ext("jtool map|*.jmap","","","Open Map");
    if (filename == "") 
        exit;
        
    loadOldMap(filename); 
    break;
     
    case "jtool":
    filename = get_open_filename_ext("jtool map|*.jmap","","","Open Map");
    if (filename == "") 
        exit;
        
    loadMap(filename); 
    break;
}
