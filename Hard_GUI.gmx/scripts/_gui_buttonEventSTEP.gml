
//CLICK DETECTION
if point_in_rectangle(mouseForm_x,mouseForm_y,x,y,x+w,y+h)
{
  bCheck=       gui_mouseCheck(myform,mb_left)
  bCheckPress=  gui_mouseCheckPress(myform,mb_left)
  bCheckRelease=gui_mouseCheckRelease(myform,mb_left)
  
  if bCheckPress
  {gui_clickTake()}
  
  if onClickAction!=-1 && bCheckRelease
  {script_execute(onClickAction,onClickArgs)}
}
else
{
  bCheck=       0
  bCheckPress=  0
  bCheckRelease=0
}
//CLICK DETECTION
