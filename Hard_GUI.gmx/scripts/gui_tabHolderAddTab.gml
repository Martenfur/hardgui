///gui_tabHolderAddTab(tab,tab_name,form)

/*
Adds new tab using existing form.
*/

if instance_exists(argument2)
{
  with(argument0)
  {
    var newtab=ds_list_create();
  
    ds_list_add(newtab,argument1) //Name.
    ds_list_add(newtab,max(GUI_SPACING_4X*4,string_width(argument1)+GUI_SPACING*2)) //Name length.
    ds_list_add(newtab,argument2) //Form.
    argument2.pinnedId=  id
    argument2.pinned_xadd=0
    argument2.pinned_yadd=GUI_SPACING_4X
    ds_list_add(tabs,newtab)
  }
}
