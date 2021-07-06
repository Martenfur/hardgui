///gui_createSlider(x,y,vertical,slider_l,content_l,invert)

var new;
if argument2
{
  new=instance_create(argument0,argument1,gui_slider_v) //vertical slider
  new.h=argument3
}
else
{
  new=instance_create(argument0,argument1,gui_slider_h) //horizontal slider
  new.w=argument3
}

new.contentL=argument4-argument3 //NOTICE THIS!!!
new.invert=  argument5
new.slide=   argument5
return new
