///_gui_sliderUpdate(mouse_x,mouse_y,x_arg,y_arg,w_arg,h_arg)


mouseForm_x_arg=argument0
mouseForm_y_arg=argument1
x_arg=          argument2
y_arg=          argument3
w_arg=          argument4
h_arg=          argument5 

//Preventing from dividing by 0.
if contentL<=-h_arg
{sliderButtonL=h_arg-GUI_SPACING_4X*2}
else
{sliderButtonL=max(GUI_SPACING_4X/2,(h_arg-GUI_SPACING_4X*2)*min(h_arg/(contentL+h_arg),1))}
//Preventing from dividing by 0.

//SLIDER GRAB
if gui_mouseCheckPress(myform,mb_left)
{
  
  if point_in_rectangle(mouseForm_x_arg,mouseForm_y_arg,x_arg,      y_arg+GUI_SPACING_4X,
                                                        x_arg+w_arg,y_arg+h_arg-GUI_SPACING_4X)
  {
    gui_clickTake()
    //Mouse on the slider button.
    if point_in_rectangle(mouseForm_x_arg,mouseForm_y_arg,x_arg,      y_arg+sliderButtonPos+GUI_SPACING_4X,
                                                          x_arg+w_arg,y_arg+sliderButtonPos+sliderButtonL+GUI_SPACING_4X)
    {sliderButtonDragDL=(mouseForm_y_arg-y_arg-sliderButtonPos-GUI_SPACING_4X)}
    //Mouse on the slider button.
    else
    {//Mouse on the rest of slider.
      sliderButtonPos=mouseForm_y_arg-(y_arg+GUI_SPACING_4X+sliderButtonL/2)
      if sliderButtonPos<0
      {sliderButtonPos=0}
      if sliderButtonPos>h_arg-GUI_SPACING_4X*2-sliderButtonL
      {sliderButtonPos=h_arg-GUI_SPACING_4X*2-sliderButtonL}
      sliderButtonDragDL=(mouseForm_y_arg-y_arg-sliderButtonPos-GUI_SPACING_4X)
    }//Mouse on the rest of slider.
    sliderButtonDrag=1
  }
  else
  {sliderButtonDrag=0}
}
//SLIDER GRAB

//SLIDER DRAG
if sliderButtonDrag
{
  sliderButtonPos=mouseForm_y_arg-(y_arg+GUI_SPACING_4X+sliderButtonDragDL)
  if sliderButtonPos<0
  {sliderButtonPos=0}
  if sliderButtonPos>h_arg-GUI_SPACING_4X*2-sliderButtonL
  {sliderButtonPos=h_arg-GUI_SPACING_4X*2-sliderButtonL}
}
else
{

  //ARROWS
  var bSpdRes;
  if portionSlide
  {bSpdRes=subcontentL}
  else
  {bSpdRes=bSpd}
  
    //up
  if gui_subbuttonCheck(0)
  //&& point_in_rectangle(mouseForm_x_arg,mouseForm_y_arg,x_arg,               y_arg,
  //                                                      x_arg+GUI_SPACING_4X,y_arg+GUI_SPACING_4X)
  {
      sliderButtonPos-=(bSpdRes/contentL)*(h_arg-sliderButtonL-GUI_SPACING_4X*2)
  }
  //up
  
  //down
  if gui_subbuttonCheck(1)
  //&& point_in_rectangle(mouseForm_x_arg,mouseForm_y_arg,x_arg,               y_arg+h_arg-GUI_SPACING_4X,
  //                                                      x_arg+GUI_SPACING_4X,y_arg+h_arg)
  {
    sliderButtonPos+=(bSpdRes/contentL)*(h_arg-sliderButtonL-GUI_SPACING_4X*2)
  }
  //down
    
  //ARROWS
}
//SLIDER DRAG

//WHEEL SCROLLING
if wheelScroll && !sliderButtonDrag //&& !bCheck 
&& point_in_rectangle(mouseForm_x_arg,mouseForm_y_arg,wheelX1,wheelY1,wheelX2,wheelY2)
&& myform.clickable=1
{
  var bSpdRes;
  if portionSlide
  {bSpdRes=subcontentL}
  else
  {bSpdRes=wheelSpd}
  sliderButtonPos+=(bSpdRes/contentL)*(h_arg-sliderButtonL-GUI_SPACING_4X*2)*(mouse_wheel_down()-mouse_wheel_up())
}
//WHEEL SCROLLING

//LIMITING SCROLLER
if sliderButtonPos<0
{sliderButtonPos=0}
if sliderButtonPos>h_arg-GUI_SPACING_4X*2-sliderButtonL
{sliderButtonPos=h_arg-GUI_SPACING_4X*2-sliderButtonL}
//LIMITING SCROLLER

//PORTION SLIDE
if portionSlide && sliderButtonPos!=h_arg-GUI_SPACING_4X*2-sliderButtonL
{
  var portionL=(subcontentL/contentL)*(h_arg-sliderButtonL-GUI_SPACING_4X*2)
  sliderButtonPos=round(sliderButtonPos/portionL)*portionL
}
//PORTION SLIDE

//CONVERSION
if h_arg-GUI_SPACING_4X*2=sliderButtonL
{slide=invert}
else
{ 
  if invert
  {slide=1-sliderButtonPos/(h_arg-GUI_SPACING_4X*2-sliderButtonL)}
  else
  {slide=sliderButtonPos/(h_arg-GUI_SPACING_4X*2-sliderButtonL)}
}
//CONVERSION
