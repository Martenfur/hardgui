///gui_keyComboActionAdd(index,script,arg0,...)

/*
Sets a function to execute every time a keycombination was pressed.
Keep in mind, all the arguments will be transferred to a list,
and in your function you should use them as a list.
*/

with(gui_cntrl)
{
  var keyComboCur=keyCombo[|argument[0]];
  ds_list_add(keyComboCur,argument[1])
  
  var keyComboArgList=ds_list_create();
  
  for(var kadd_i=2; kadd_i<argument_count kadd_i+=1)
  {ds_list_add(keyComboArgList,argument[kadd_i])}
  ds_list_add(keyComboCur,keyComboArgList)
}
