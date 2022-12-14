///intToBaseXString(number, [ base ])
// Converts an integer into a base variable string.
var number = argument[0];
var base = 32;

if (argument_count == 2) {
    base = argument[1];
}

var baseXstring = "";

switch (base) {
    case 128:
        baseXstring = "$%^&*()-=[]\;,./_+{}|:<>?`~あえいうおかけきくこまめみもむがげぎごぐはへひほふさせしそすざぜじぞずな";
        
    case 64:
        baseXstring = "wxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@" + baseXstring;
        
    case 32:
        baseXstring = "0123456789abcdefghijklmnopqrstuv" + baseXstring;
        break;
}

var result = "";

while (number > 0)  {
    var decimal = number / base;
    number = floor(decimal);
    var pos = (decimal - number) * base;
    result = string_char_at(baseXstring, pos + 1) + result;
}

return result;
