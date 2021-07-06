///gui_contextMenuItemAdd(index,str,script,arg0,...)

/*
Adds new menu item with given name and function with given arguments.
Function will be executed every time item was clicked.
Keep in mind, all the arguments will be transferred to a list,
and in your function you should use them as a list.
*/

var newlist=ds_list_create();

ds_list_add(newlist,argument[1]) //Name.

if argument_count>2
{
  ds_list_add(newlist,argument[2]) //Function.
  
  var arglist=ds_list_create(); //Arguments should be in separate list.
  for(var c_i=3; c_i<argument_count c_i+=1)
  {ds_list_add(arglist,argument[c_i])} 
  ds_list_add(newlist,arglist)
}
else
{ds_list_add(newlist,-1,-1)} //If there's no function to be assigned.

ds_list_add(argument[0],newlist)
  
