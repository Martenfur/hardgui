///gui_buttonSetOnClickAction(button,script,arg0, ...)

/*
Sets a function to execute every time a button was released.
Keep in mind, all the arguments will be transferred to a list,
and in your function you should use them as a list.
*/

with(argument[0])
{
  onClickAction=argument[1]
  
  if ds_exists(onClickArgs,ds_type_list)
  {ds_list_destroy(onClickArgs)}
  onClickArgs=ds_list_create()
  
  for(var i=2; i<argument_count i+=1)
  {ds_list_add(onClickArgs,argument[i])}
}
