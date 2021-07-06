///gui_subbuttonCreate(x1,y1,x2,y2)

/*
Creates new subbutton. 
Note that button coordinates are relative to x;y of an object.
*/

var _new=ds_list_create();

for(var i=0; i<argument_count i+=1)
{ds_list_add(_new,argument[i])}

ds_list_add(_subbuttonList,_new)

return ds_list_size(_subbuttonList)-1


