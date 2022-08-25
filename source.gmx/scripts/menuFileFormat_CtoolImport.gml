///menuFileFormat_CtoolImport()
if (!oEdit.undo_nochanges) 
{
    inputOverlay(input_yesno,inputCallback_LoadMap("ctool"),
    "Map has been modified. Save changes?");
}
else 
{
    global.input_bool = false;
    global.input_cancel = false;
    inputCallback_LoadMap("ctool");
}
