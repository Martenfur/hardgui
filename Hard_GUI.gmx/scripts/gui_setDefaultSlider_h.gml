///gui_setDefaultSlider_h(form)
/*
Sets horizontal slider to which all newly created GUI elements will be assigned.
Use NOSLIDER to reset it to default.
*/

with(gui_cntrl)
{ds_stack_push(gui_cntrl.defSlider_h,argument0)}

