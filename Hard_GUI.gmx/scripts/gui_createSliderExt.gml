///gui_createSliderExt(x,y,vertical,slider_l,content_l,invert,portion_slide,subcontent_l,whl_scrl,whl_x1,whl_y1,whl_x2,whl_y2)

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

new.portionSlide=argument6
new.subcontentL= argument7

new.wheelScroll=argument8
new.wheelX1=    argument9
new.wheelY1=    argument10
new.wheelX2=    argument11
new.wheelY2=    argument12

return new


