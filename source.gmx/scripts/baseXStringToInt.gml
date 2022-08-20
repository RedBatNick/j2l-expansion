// Converts a base variable string to an integer.

var str = argument[0];

var base = 32;
if (argument_count == 2)
    base = argument[1];
    
var baseXstring;

switch (base) 
{
    case 32:
    baseXstring += '0123456789abcdefghijklmnopqrstuv';

    case 64: 
    baseXstring += 'wxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@';

    case 128:
    baseXstring += '$%^&*()-=[]\;,./_+{}|:<>?`~あえいうおかけきくこまめみもむがげぎごぐはへひほふさせしそすざぜじぞずな';
    break;
}

var result = 0;
var length = string_length(str);

for (var i=0; i<length; i++) 
{
    var char = string_char_at(str,i+1);
    var charvalue = string_pos(char,baseXstring)-1;
    var placevalue = power(base,length-1-i);
    result += charvalue * placevalue;
}

return result;
