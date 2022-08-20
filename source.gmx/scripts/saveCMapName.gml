var filename, f, delim, objects_out_of_range, objects_unrecognized, maxpos, minpos, yy, saveid, ins, warning_message;
filename = argument0
if (!global.BackupFailSafe)
    oEdit.undo_nochanges = 1
global.BackupFailSafe = 0
f = file_text_open_write(filename)
delim = "|"
file_text_write_string(f, "ctool")
file_text_write_string(f, delim)
file_text_write_string(f, global.version_string)
file_text_write_string(f, delim)
file_text_write_string(f, ("inf:" + string(global.infinitejump)))
file_text_write_string(f, delim)
file_text_write_string(f, ("dot:" + string(global.dotkid)))
file_text_write_string(f, delim)
file_text_write_string(f, ("sav:" + string(global.savetype)))
file_text_write_string(f, delim)
file_text_write_string(f, ("bor:" + string(global.bordertype)))
file_text_write_string(f, delim)
file_text_write_string(f, ("px:" + floatToBase32String(global.savePlayerX)))
file_text_write_string(f, delim)
file_text_write_string(f, ("py:" + floatToBase32String(global.savePlayerY)))
file_text_write_string(f, delim)
file_text_write_string(f, ("ps:" + string(global.savePlayerXScale)))
file_text_write_string(f, delim)
file_text_write_string(f, ("pg:" + string(global.saveGrav)))
file_text_write_string(f, delim)
file_text_write_string(f, "objects:")
objects_out_of_range = 0
objects_unrecognized = 0
with (all)
{
    if (!controlObject('inPalette',object_index))
    {
    }
    else
        saved = 0
}
with (all)
{
    if (!controlObject('inPalette',object_index))
    {
    }
    else if saved
    {
    }
    else
    {
        maxpos = 896
        minpos = -128
        if ((x >= maxpos) || ((y >= maxpos) || ((x < minpos) || (y < minpos))))
            objects_out_of_range = 1
        else
        {
            yy = y
            file_text_write_string(f, ("-" + padStringLeft(intToBase32String((y + 128)), 2, "0")))
            with (all)
            {
                if ((!controlObject('inPalette',object_index)) || ((y != yy) || saved))
                {
                }
                else if ((x >= maxpos) || ((y >= maxpos) || ((x < minpos) || (y < minpos))))
                    objects_out_of_range = 1
                else
                {
                    saveid = objectToSaveX(object_index,1)
                    show_debug_message(((string(saveid) + " aka ") + object_get_name(object_index)))
                    if (saveid != -1)
                    {
                        file_text_write_string(f, (intToBase64String(saveid) + padStringLeft(intToBase32String((x + 128)), 2, "0")))
                        saved = 1
                    }
                    else
                        objects_unrecognized = 1
                }
            }
        }
    }
}
file_text_writeln(f)
file_text_writeln(f)
file_text_write_string(f, "data repeated below for easy parsing by other tools")
file_text_writeln(f)
file_text_write_string(f, "objects: (x, y, type)")
file_text_writeln(f)
with (all)
{
    if (!controlObject('inPalette',object_index))
    {
    }
    else
    {
        maxpos = 896
        minpos = -128
        if ((x >= maxpos) || ((y >= maxpos) || ((x < minpos) || (y < minpos))))
            objects_out_of_range = 1
        else
            file_text_write_string(f, (((((string(x) + " ") + string(y)) + " ") + string(objectToSaveX(object_index,1))) + " "))
    }
}
file_text_writeln(f)
file_text_write_string(f, ("version:" + global.version_string))
file_text_writeln(f)
file_text_write_string(f, ("infinitejump:" + string(global.infinitejump)))
file_text_writeln(f)
file_text_write_string(f, ("dotkid:" + string(global.dotkid)))
file_text_writeln(f)
file_text_write_string(f, ("savetype:" + string(global.savetype)))
file_text_writeln(f)
file_text_write_string(f, ("bordertype:" + string(global.bordertype)))
file_text_writeln(f)
file_text_write_string(f, ("playersavex:" + string(global.savePlayerX)))
file_text_writeln(f)
file_text_write_string(f, ("playersavey:" + string_format(global.savePlayerY, 3, 16)))
file_text_writeln(f)
file_text_write_string(f, ("playersavexscale:" + string(global.savePlayerXScale)))
file_text_writeln(f)
file_text_write_string(f, "savestrings: (x, y, string)")
file_text_writeln(f)
if instance_exists(oSave)
{
    for (i = 0; i < instance_number(oSave); i++)
    {
        ins = instance_find(oSave, i)
        if (ins.textline[0] != "")
        {
            file_text_write_string(f, (((((string(ins.x) + " ") + string(ins.y)) + " |") + string(ins.textline[0])) + "|"))
            file_text_writeln(f)
        }
    }
}
file_text_close(f)
warning_message = ""
if objects_unrecognized
    warning_message += "Warning: Some objects were not official and weren't saved."
if objects_out_of_range
    warning_message = (((("Warning: Some objects were out of range and weren't saved.#(x or y < " + string(minpos)) + " or >= ") + string(maxpos)) + ")")
if (warning_message != "")
    inputOverlay(3, 0, warning_message)
return 1;
