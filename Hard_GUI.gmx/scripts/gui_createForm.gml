///gui_createForm(x,y,w,h)

var new;

new=instance_create(argument0,argument1,gui_form)
new.w=     argument2
new.h=     argument3
new.surf=  surface_create(argument2,argument3)
surface_set_target(new.surf)
draw_clear_alpha(new.cBkg,1)
surface_reset_target()

with(gui_cntrl)
{
  ds_grid_resize(formListDraw,ds_grid_width(formListDraw)+1,2)
   
  var new_i;
  new_i=ds_grid_width(formListDraw)-1
  
  formListDraw[#new_i,0]=new
  formListDraw[#new_i,1]=gui_formGetRank(new)+0.5
}

_gui_formListSort()
_gui_formListClickPrepare()

return new
