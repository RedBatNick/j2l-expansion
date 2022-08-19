// Converts an integer into a base variable string.

var number = argument0
var base = argument1

var baseXstring;
switch base {
    case 32:
    baseXstring += '0123456789abcdefghijklmnopqrstuv'

    case 64: 
    baseXstring += 'wxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@'
    
    case 128:
    baseXstring += '$%^&*()-=[]\;,./_+{}|:<>?`~あえいうおかけきくこまめみもむがげぎごぐはへひほふさせしそすざぜじぞずな'
    break
}

var result = ''

while number > 0 {
    var decimal = number/base
    number = floor(decimal)
    var pos = (decimal-number)*base
    result = string_char_at(baseXstring,pos+1) + result
}

show_debug_message(baseXstring)
return result
