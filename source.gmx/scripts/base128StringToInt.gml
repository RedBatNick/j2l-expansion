// Converts a base 128 string to an integer.

var str = argument[0];

var base128string = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@$%^&*()-=[]\;,./_+{}|:<>?`~あえいうおかけきくこまめみもむがげぎごぐはへひほふさせしそすざぜじぞずな";
var result = 0;
var length = string_length(str);

for (var i = 0; i < length; i+=1) 
{
    var char = string_char_at(str,i+1);
    var charvalue = string_pos(char,base128string)-1;
    var placevalue = power(128,length-1-i);
    result += charvalue * placevalue;
}

return result;
