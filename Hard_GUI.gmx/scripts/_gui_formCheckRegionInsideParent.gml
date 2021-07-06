///_gui_formCheckRegionInsideParent(xch,ych,x1,y1,x2,y2,form)
/*
Checks if form inside 
its parent in given coords.
*/
var get_x,get_y,get_w,get_h,get_form;
get_x=  argument2
get_y=  argument3
get_w=  abs(argument4-argument2)
get_h=  abs(argument5-argument3)
get_form=argument6


if instance_exists(get_form) && get_form!=gui_cntrl
{
  gui_formGetGlobalCoords(get_form)
  get_xGlobal=xGlobal
  get_yGlobal=yGlobal
  
  get_x+=get_xGlobal
  get_y+=get_yGlobal 
 
  while(1)
  {
    if point_in_rectangle(argument0,argument1,get_x,get_y,get_x+get_w,get_y+get_h)
    {
      if get_form.myform=gui_cntrl || get_form.myform=noone
      {return 1}  
      else
      {
        get_xGlobal-=get_form.x
        get_yGlobal-=get_form.y
        get_x=       get_xGlobal
        get_y=       get_yGlobal
        get_form=    get_form.myform
        get_w=       get_form.w
        get_h=       get_form.h
      }    
    }
    else
    {return 0}
  }
}

return 0
