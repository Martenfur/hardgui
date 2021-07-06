///gui_resetDefaultSlider_h()

with(gui_cntrl)
{
  ds_stack_pop(defSlider_h)
  if ds_stack_empty(defSlider_h)
  {ds_stack_push(defSlider_h,NOSLIDER)}
}
