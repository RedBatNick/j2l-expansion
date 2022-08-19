///loadRecord(filename, cont)
var filename, f;
filename = argument[0];
f = file_text_open_read(filename);

if (argument_count >= 2)
    var cont = argument[1];

ds_list_read(global.recordList, file_text_read_string(f))

global.recordX = real(file_text_read_string(f));
global.recordY = real(file_text_read_string(f));
global.recordGrav = real(file_text_read_string(f));
global.recordXscale = real(file_text_read_string(f));
global.recordVspeed = real(file_text_read_string(f));
global.recordDjump = real(file_text_read_string(f));

if (cont)
{
    global.continueX = real(file_text_read_string(f));
    global.continueY = real(file_text_read_string(f));
    global.continueGrav = real(file_text_read_string(f));
    global.continueXscale = real(file_text_read_string(f));
    global.continueVspeed = real(file_text_read_string(f));
    global.continueDjump = real(file_text_read_string(f));
    global.PlayerFrameCounter = real(file_text_read_string(f));
}

file_text_close(f);
