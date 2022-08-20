// Deletes all palette objects and loads a map from file.

var filename = argument[0];
var f = file_text_open_read(filename);

var content = file_text_read_string(f);
file_text_close(f);

var index = 1;
var currentstring = "";
var section_number = 0;
var delim = "|";
var versionstring = "";
var mapver_major = 0;

global.infinitejump = false;
global.dotkid = false;
global.savetype = savetype_shoot;
global.bordertype = bordertype_death;
global.saveGrav = 1;

while (index <= string_length(content)) {
    var nextchar = string_char_at(content,index);
    if (nextchar != delim) {
        currentstring += nextchar;
    }
    
    if (nextchar == delim || index == string_length(content)) {
        // jtool
        if (section_number == 0 && currentstring != "ctool") {
            inputOverlay(input_info,false,"Not a valid ctool map.");
            exit;
        }
        
        // version
        else if (section_number == 1) {
            var mapver_major = real(splitDelimString(currentstring,".",0));
            if (mapver_major > global.version_major) {
                inputOverlay(input_info,false,"Warning: may not be compatible with map;#it has a new major version.")
            }
        }
        
        // everything else
        else if (section_number > 1) {
            var prefix = splitDelimString(currentstring,":",0);
            var suffix = splitDelimString(currentstring,":",1);
            if (prefix == "objects") {
                with (oEdit) { clearUndoStack(); }
                oEdit.undo_nochanges = true;
                
                with (all) {
                    if (controlObject("inPalette",object_index))
                        instance_destroy();
                }
                
                with (oPatBall) { instance_destroy(); }
                var objectstring = suffix;
                var i = 1;
                var yy = 0;
                while (i <= string_length(objectstring)) {
                    if (string_copy(objectstring,i,1) == "-") {
                        yy = base32StringToInt(string_copy(objectstring,i+1,2));
                        i += 3;
                    }
                    else {
                        var objectid = saveXToObject(base64StringToInt(string_copy(objectstring,i,1)),1);
                        if (objectid != noone) {
                            var xx = base32StringToInt(string_copy(objectstring,i+1,2));
                            var inst = instance_create(xx-128,yy-128,objectid);
                        }
                        i += 3;
                    }
                }
            }
            else if (prefix == "dot") {
                global.dotkid = real(suffix);
            }
            else if (prefix == "inf") {
                global.infjump = real(suffix);
            }
            else if (prefix == "sav") {
                global.savetype = real(suffix);
            }
            else if (prefix == "bor") {
                global.bordertype = real(suffix);
            }
            else if (prefix == "px") {
                global.savePlayerX = base32StringToFloat(suffix);
            }
            else if (prefix == "py") {
                global.savePlayerY = base32StringToFloat(suffix);
            }
            else if (prefix == "ps") {
                global.savePlayerXScale = real(suffix);
            }
            else if (prefix == "pg") {
                global.saveGrav = real(suffix);
            }
        }
        section_number += 1;
        currentstring = "";
    }
    index += 1;
}

// save signs
f = file_text_open_read(filename);

var textstr = "";
var textstr2 = "";
var substr = "";

for (i = 0; i < 3; i+=1)
    it[i] = 0;

var i = 0;
var ent = -1;
var found = 0;

while (!file_text_eof(f))
{
    textstr = file_text_read_string(f);
    show_debug_message(textstr);
    if (found)
    {
        i = 0;
        for (i = 1; i <= string_length(textstr); i+=1)
        {
            if (ent < 2)
            {
                var next_char = string_char_at(textstr,i);
                if (next_char != " ") {
                    substr += next_char;
                }
                else {
                    it[++ent] = substr;
                    substr = "";
                }
            }
            else
            {
                var xxx = int64(it[0]);
                var yyy = int64(it[1]);
                textstr = string_copy(textstr,string_pos("|",textstr)+1,string_length(textstr));
                textstr = string_replace(textstr,"|","");
                
                var instance = instance_position(xxx, yyy, oSave);
                if (instance != noone) {
                    with (instance)
                    {
                        textline[0] = other.textstr;
                        textSplit = textline[0];
                        event_user(11);
                    }
                }
                show_debug_message("x: "+string(xxx)+"#y: "+string(yyy)+"#textstr: "+string(textstr));
            }
        }
        file_text_readln(f);
    }
    
    if (!found) {
        if (string_count("savestrings",textstr) == 1)
        {
            show_debug_message("found");
            found = true;
        }
        file_text_readln(f);
    }
}
file_text_close(f);
show_debug_message("==============");

room_speed = 50;
global.death_count = 0;
loadPlayer();
completelyResetZoom();

if (global.shouldresetloadedmapname) {
    global.shouldresetloadedmapname = false;
    global.lastloadedmapname = "";
    updateCaption();
}
else {
    global.lastloadedmapname = splitDelimString(filename, "\", string_count("\", filename));
    updateCaption();
}
