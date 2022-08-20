var filename, f, content, index, currentstring, section_number, delim, versionstring, mapver_major, nextchar, prefix, suffix, objectstring, i, yy, objectid, xx, inst, ent, found, next_char, instance;
filename = argument0
f = file_text_open_read(filename)
content = file_text_read_string(f)
file_text_close(f)
index = 1
currentstring = ""
section_number = 0
delim = "|"
versionstring = ""
mapver_major = 0
global.infinitejump = 0
global.dotkid = 0
global.savetype = 0
global.bordertype = 0
global.saveGrav = 1
while (index <= string_length(content))
{
    nextchar = string_char_at(content, index)
    if (nextchar != delim)
        currentstring += nextchar
    if ((nextchar == delim) || (index == string_length(content)))
    {
        if ((section_number == 0) && (currentstring != "ctool"))
        {
            inputOverlay(3, 0, "Not a valid ctool map.")
            exit
        }
        else if (section_number == 1)
        {
            mapver_major = real(splitDelimString(currentstring, ".", 0))
            if (mapver_major > global.version_major)
                inputOverlay(3, 0, "Warning: may not be compatible with map;#it has a new major version.")
        }
        else if (section_number > 1)
        {
            prefix = splitDelimString(currentstring, ":", 0)
            suffix = splitDelimString(currentstring, ":", 1)
            if (prefix == "objects")
            {
                with (oEdit)
                    clearUndoStack()
                oEdit.undo_nochanges = 1
                with (all)
                {
                    if controlObject('inPalette',object_index)
                        instance_destroy()
                }
                with (oPatBall)
                    instance_destroy()
                objectstring = suffix
                i = 1
                yy = 0
                while (i <= string_length(objectstring))
                {
                    if (string_copy(objectstring, i, 1) == "-")
                    {
                        yy = base32StringToInt(string_copy(objectstring, (i + 1), 2))
                        i += 3
                    }
                    else
                    {
                        objectid = saveXToObject(base64StringToInt(string_copy(objectstring, i, 1)),1)
                        if (objectid != noone)
                        {
                            xx = base32StringToInt(string_copy(objectstring, (i + 1), 2))
                            inst = instance_create((xx - 128), (yy - 128), objectid)
                        }
                        i += 3
                    }
                }
            }
            else if (prefix == "dot")
                global.dotkid = real(suffix)
            else if (prefix == "inf")
                global.infjump = real(suffix)
            else if (prefix == "sav")
                global.savetype = real(suffix)
            else if (prefix == "bor")
                global.bordertype = real(suffix)
            else if (prefix == "px")
                global.savePlayerX = base32StringToFloat(suffix)
            else if (prefix == "py")
                global.savePlayerY = base32StringToFloat(suffix)
            else if (prefix == "ps")
                global.savePlayerXScale = real(suffix)
            else if (prefix == "pg")
                global.saveGrav = real(suffix)
        }
        section_number += 1
        currentstring = ""
    }
    index += 1
}
f = file_text_open_read(filename)
textstr = ""
textstr2 = ""
substr = ""
for (i = 0; i < 3; i++)
    it[i] = 0
i = 0
ent = -1
found = 0
while (!file_text_eof(f))
{
    textstr = file_text_read_string(f)
    show_debug_message(textstr)
    if found
    {
        i = 0
        for (i = 1; i <= string_length(textstr); i++)
        {
            if (ent < 2)
            {
                next_char = string_char_at(textstr, i)
                if (next_char != " ")
                    substr += next_char
                else
                {
                    it[++ent] = substr
                    substr = ""
                }
            }
            else
            {
                xxx = int64(it[0])
                yyy = int64(it[1])
                textstr = string_copy(textstr, (string_pos("|", textstr) + 1), string_length(textstr))
                textstr = string_replace(textstr, "|", "")
                instance = instance_position(xxx, yyy, oSave)
                if (instance != noone)
                {
                    with (instance)
                    {
                        textline[0] = other.textstr
                        textSplit = textline[0]
                        event_user(11)
                    }
                }
                show_debug_message(((((("x: " + string(xxx)) + "#y: ") + string(yyy)) + "#textstr: ") + string(textstr)))
            }
        }
        file_text_readln(f)
    }
    if (!found)
    {
        if (string_count("savestrings", textstr) == 1)
        {
            show_debug_message("found")
            found = 1
        }
        file_text_readln(f)
    }
}
file_text_close(f)
show_debug_message("==============")
room_speed = 50
oDeathDisplay.death_count = 0
loadPlayer()
completelyResetZoom()
if global.shouldresetloadedmapname
{
    global.shouldresetloadedmapname = 0
    global.lastloadedmapname = ""
    updateCaption()
}
else
{
    global.lastloadedmapname = splitDelimString(filename, "\", string_count("\", filename))
    updateCaption()
}
