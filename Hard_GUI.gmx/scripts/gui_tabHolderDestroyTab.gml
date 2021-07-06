///gui_tabHolderDestroyTab(tab,form)

/*
Destroys chosen form in tab list.
*/

with(argument0)
{
  var td_tab;
  for(var td_i=0; td_i<ds_list_size(tabs) td_i+=1)
  {
    td_tab=tabs[|td_i]
    if td_tab[|2]=argument1
    {
      gui_formDestroy(td_tab[|2])
      ds_list_destroy(td_tab)
      ds_list_delete(tabs,td_i)
      break
    }  
  }
}
