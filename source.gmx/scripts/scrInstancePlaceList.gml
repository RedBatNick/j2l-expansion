var x1, y1, obj, dsid, this, that, i;

x1 = argument0;
y1 = argument1;
obj = argument2;

dsid = ds_list_create();
this = id;

with (obj)
{
    that = id;
    
    with (this)
    {
        i = instance_place(x1, y1, that);
        if (i != -4) { ds_list_add(dsid, i); }
    }
}

if ds_list_empty(dsid)
{
    ds_list_destroy(dsid);
    dsid = -4;
}

return dsid;
