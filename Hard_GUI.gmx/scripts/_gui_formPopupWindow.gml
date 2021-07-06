///_gui_formPopupWindow(form)

/*
Places form and all its window parents with given id on top.

WARNING: This function regenerates
both Draw and Click lists, so it can
mess up everything if used while 
checking them.  
*/

var bufForm=argument0;

while(1)
{
  if bufForm!=gui_cntrl
  {
    if bufForm.isWindow
    {_gui_formPopup(bufForm)}
    bufForm=bufForm.myform  
    //bufForm.clickable=3
  }
  else
  {break}
}
