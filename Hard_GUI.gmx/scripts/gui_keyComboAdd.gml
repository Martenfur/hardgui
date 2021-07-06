///gui_keyComboAdd(key1,key2,...)

with(gui_cntrl)
{
  var new=ds_list_create();
  ds_list_add(new,0,0) //Current and previous state.
  
  var keyList=ds_list_create();
  
  for(var kadd_i=0; kadd_i<argument_count kadd_i+=1)
  {ds_list_add(keyList,argument[kadd_i])}
  ds_list_add(new,keyList)
  
  ds_list_add(keyCombo,new)
  
  return ds_list_size(keyCombo)-1
}
