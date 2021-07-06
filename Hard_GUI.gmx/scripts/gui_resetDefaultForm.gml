///gui_resetDefaultForm()

with(gui_cntrl)
{
  ds_stack_pop(defForm)
  if ds_stack_empty(defForm)
  {ds_stack_push(defForm,NOFORM)}
}
