///_gui_clickInit()
/*
Returns relative mouse coordinates and click events.
*/

gui_formGetGlobalCoords(myform)

mouseForm_x=mouse_x-xGlobal 
mouseForm_y=mouse_y-yGlobal

if object_index!=gui_form
{
  if !instance_exists(myform)
  {instance_destroy()}

  if instance_exists(myslider_h)
  {x=startx-myslider_h.contentL*myslider_h.slide}
  if instance_exists(myslider_v)
  {y=starty-myslider_v.contentL*myslider_v.slide}
}


