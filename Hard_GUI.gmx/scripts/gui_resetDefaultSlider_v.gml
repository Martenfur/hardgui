///gui_resetDefaultSlider_v()

with(gui_cntrl)
{
  ds_stack_pop(defSlider_v)
  if ds_stack_empty(defSlider_v)
  {ds_stack_push(defSlider_v,NOSLIDER)}
}
