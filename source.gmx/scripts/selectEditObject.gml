var i = argument[0];

oEdit.selected_object = objs[i];
oEdit.selected_sprite = sprs[i];
oEdit.selected_killer = killers[i];
if (scrValidMini(objs[i]) == 2)
    oEdit.usingMini = 1;
else
    oEdit.usingMini = 0;
