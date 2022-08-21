if (!global.input_cancel)
{
    with (oEdit)
    {
        var inst = selected_instance;
        var code = global.input_string;
        
        if (string_count(code, "##") >= 1)
        {
            code = string_replace_all(code, "##", "#");
            inst.textline[0] = string_copy(code, 1, string_pos(code, "#"));
            inst.textline[1] = string_copy(code, string_pos(code, "#"), (string_length(code) - string_length(inst.textline[0])));
            inst.textSplit = code;
            inst.lineNum = 2;
            
            with (inst)
                event_user(11);
        }
        else
        {
            inst.textline[0] = code;
            inst.textline[1] = "";
            inst.lineNum = 1;
            inst.textSplit = code;
            
            with (inst)
                event_user(11);
        }
    }
}
