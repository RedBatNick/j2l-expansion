///scrInstancePlaceList(x, y, obj)

var x1 = argument[0];
var y1 = argument[1];
var obj = argument[2];

var dsid = ds_list_create();
var this = id;

with (obj)
{
    var that = id;
    
    with (this)
    {
        var i = instance_place(x1, y1, that);
        if (i != -4) { ds_list_add(dsid, i); }
    }
}

if ds_list_empty(dsid)
{
    ds_list_destroy(dsid);
    dsid = -4;
}

return dsid;
