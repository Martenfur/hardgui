///gui_contextMenuActivate(index)

if ds_exists(argument0,ds_type_list) && ds_list_size(argument0)>0
{
  with(gui_cntrl) 
  {
    contextMenuActiveId=argument0
  
    //Width & height calculating.
    var c_size=ds_list_size(contextMenuActiveId);
    contextMenu_w=contextMenu_wmin
    contextMenu_h=GUI_SPACING_4X*c_size
  
    var contextMenuItemCur,c_strw;
    for(var c_i=0; c_i<c_size c_i+=1)
    {
      contextMenuItemCur=contextMenuActiveId[|c_i];
      c_strw=string_width(contextMenuItemCur[|0]);
      if c_strw>contextMenu_w
      {contextMenu_w=c_strw+GUI_SPACING*2}
    }
    //Width & height calculating.
    
    //Placing menu.
    if mouse_x+contextMenu_w>w
    {contextMenu_x=max(0,mouse_x-contextMenu_w)}
    else
    {contextMenu_x=mouse_x}
      
    if mouse_y+contextMenu_h>h
    {contextMenu_y=max(0,mouse_y-contextMenu_h)}
    else
    {contextMenu_y=mouse_y}
    //Placing menu.     
  }
}


