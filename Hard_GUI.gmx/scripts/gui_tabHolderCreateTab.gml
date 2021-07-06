///gui_tabHolderCreateTab(tab,tab_name)

/*
Creates new tab and new form.
*/

with(argument0)
{
  var newtab=ds_list_create();
  gui_setDefaultForm(myform)
  gui_setDefaultSlider_v(NOSLIDER)
  gui_setDefaultSlider_h(NOSLIDER)  
  var newform=gui_createForm(x,y+GUI_SPACING_4X,w,h-GUI_SPACING_4X);
  gui_resetDefaultForm()
  gui_resetDefaultSlider_v()
  gui_resetDefaultSlider_h()

  newform.pinnedId=  id
  newform.pinned_xadd=0
  newform.pinned_yadd=GUI_SPACING_4X

  ds_list_add(newtab,argument1) //Name.
  ds_list_add(newtab,max(GUI_SPACING_4X*4,string_width(argument1)+GUI_SPACING*2)) //Name length.
  ds_list_add(newtab,newform) //Form.
  ds_list_add(tabs,newtab)

  return newform
}
