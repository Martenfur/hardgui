///_gui_input_cursor_keyboard(isnum)

var isnum=argument0;

if active
{  
  //CURSOR
  if point_in_rectangle(mouseForm_x,mouseForm_y,x,y,x+w-GUI_SPACING_2X*isnum,y+h)
  {window_set_cursor(cr_beam)}
  else
  {window_set_cursor(cr_default)}

  //left
  if keyboard_lastkey=37 
  {
    curPos-=1
    keyboard_lastkey=-1
    curDraw=1
    curDrawAl=15
  }
  //left
  
  //right
  if keyboard_lastkey=39 
  {
    curPos+=1
    keyboard_lastkey=-1
    curDraw=1
    curDrawAl=15
  }
  //right

  if curPos<0
  {curPos=0}
  if curPos>string_length(str)
  {curPos=string_length(str)}

  curDrawAl-=1
  if curDrawAl=0
  {
    curDraw=!curDraw
    curDrawAl=15
  }
  //CURSOR


  //CHARS DELETING

  //backspace
  if keyboard_lastkey=8
  {
    str=string_delete(str,curPos,1)
    curPos-=1
    keyboard_lastkey=-1
  }
  //backspace

  //delete
  if keyboard_lastkey=46
  {
    str=string_delete(str,curPos+1,1)
   keyboard_lastkey=-1
  }
  //delete

  //CHARS DELETING
}
