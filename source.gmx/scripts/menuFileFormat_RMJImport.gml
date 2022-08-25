///menuFileFormat_RMJImport()
if (!oEdit.undo_nochanges) 
{
    inputOverlay(input_yesno,inputCallback_LoadRMJMap,
    "Map has been modified. Save changes?");
}
else 
{
    global.input_bool = false;
    global.input_cancel = false;
    inputCallback_LoadMap("rmj");
}
