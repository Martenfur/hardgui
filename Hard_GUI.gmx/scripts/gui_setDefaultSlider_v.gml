///gui_setDefaultSlider_v(form)
/*
Sets vertical slider to which all newly created GUI elements will be assigned.
Use NOSLIDER to reset it to default.
*/

with(gui_cntrl)
{ds_stack_push(gui_cntrl.defSlider_v,argument0)}

