///gui_contextMenuCreate(str1,str2...)

/*
Creates basic context menu.
If you want to assign functions to menu items,
leave this function without arguments and use 
gui_contextMenuItemAdd().
*/

var newlist=ds_list_create();

for(var c_i=0; c_i<argument_count c_i+=1)
{gui_contextMenuItemAdd(newlist,argument[c_i])}

return newlist

