///loadGMSMap(filename)
var filename = argument[0];
var f = file_text_open_read(filename);
var content = "";

while (!file_text_eof(f)) {
    content += file_text_read_string(f);
    file_text_readln(f);
}

var pos = string_pos("<instances>", content);
var instance_content = "";

while (string_count(instance_content, "</instances>") == 0) {
    instance_content += string_char_at(content, pos++);
}

instance_content = string_replace(instance_content, "</instances>", "")
instance_content = string_replace(instance_content, "<instances>", "")

var pos = 0;
var count = string_count(instance_content, "/>");

repeat (count) {
    var instance = "";

    while (string_count(instance, "/>") == 0) {
        instance += string_char_at(instance_contect, pos++);
    }
    
    show_debug_message(instance);
}
