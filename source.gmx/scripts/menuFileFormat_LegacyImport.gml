///menuFileFormat_LegacyImport()
if (!oEdit.undo_nochanges) 
{
    inputOverlay(input_yesno,inputCallback_LoadMap("legacy"),
    "Map has been modified. Save changes?");
}
else 
{
    global.input_bool = false;
    global.input_cancel = false;
    inputCallback_LoadMap("legacy");
}
