///gui_formCheckOverlay(x,y,form)

with(gui_cntrl)
{
  o_l=ds_list_size(formListClick)
  
  for(var o_i=0; o_i<o_l o_i+=1)
  {
    if formListClick[|o_i]=argument2 //if form was found
    {return 0}
    else
    {
      gui_formGetGlobalCoords(formListClick[|o_i])
      
      if gui_formCheckActivity(formListClick[|o_i])
      && point_in_rectangle(argument0,argument1,
                            xGlobal,                      yGlobal,
                            xGlobal+formListClick[|o_i].w,yGlobal+formListClick[|o_i].h)
      {return 1}
    }
  }
  return 0
}
