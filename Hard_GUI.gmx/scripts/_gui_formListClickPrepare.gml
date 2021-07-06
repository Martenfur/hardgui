///_gui_formListClickPrepare()
/*
Creates list of forms for click processing.
Must be performed ONLY after list sort!
*/

with(gui_cntrl)
{
  ds_list_clear(formListClick) 
  
  for(var l_i=ds_grid_width(formListDraw)-1; l_i>=0 l_i-=1)
  { 
    if formListDraw[#l_i,1] div 1 = 0
    {ds_list_add(formListClick,formListDraw[#l_i,0])}
    else
    {
      var l_iFind;
      l_iFind=ds_list_find_index(formListClick,formListDraw[#l_i,0].myform)
      if l_iFind!=-1
      {ds_list_insert(formListClick,l_iFind,formListDraw[#l_i,0])}
    }
  }
}
