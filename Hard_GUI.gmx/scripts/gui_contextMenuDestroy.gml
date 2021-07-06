///gui_contextMenuDestroy(index)

/*
Context menu is basically a bunch of ds_lists, so you should manually destroy it.
*/

var destroyedList=argument0;
var destroyedItem;

for(var i=0; i<ds_list_size(destroyedList) i+=1)
{
  destroyedItem=destroyedList[|i]
  
  if ds_exists(destroyedItem[|2],ds_type_list)
  {ds_list_destroy(destroyedItem[|2])}
  ds_list_destroy(destroyedItem)  
}

ds_list_destroy(destroyedList)

