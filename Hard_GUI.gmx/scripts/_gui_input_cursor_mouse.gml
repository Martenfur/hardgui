///_gui_input_cursor_mouse(isnum)

var isnum=argument0;

var mbCheck=gui_mouseCheck(myform,mb_left);

if draggable && mbCheck
{
  //CURSOR MOVE
  if (w-GUI_SPACING_2X*isnum)-(mouseForm_x-x)<dragBorder
  { 
    //Dragging right.   
    curPos+=1
    if curPos>string_length(str)
    {curPos=string_length(str)} 
    //Dragging right.
  }
  else
  {
    if (mouseForm_x-x)<dragBorder
    {   
      //Dragging left.
      curPos-=1
      if curPos<0
      {curPos=0}
      //Dragging left. 
    }
    else
    {
      //Dragging.
      if mouseForm_x>x && mouseForm_x<x+w-GUI_SPACING_2X*isnum
      {
        var x1Ch=textXadd,
            x2Ch=textXadd;
        curPos=string_length(str)+1
        
        flag=0
        
        for(var i=0; i<string_length(str) i+=1)
        {
          x2Ch+=string_width(string_char_at(str,i+1))
          if mouseForm_x>x+x1Ch && mouseForm_x<=x+x2Ch
          {
            if x+x1Ch+(x2Ch-x1Ch)/2>mouseForm_x
            {curPos=i}
            else
            {curPos=i+1}
            flag=1
            break
          }
          x1Ch=x2Ch
        }
      }
      //Dragging.
    }
  }
  //CURSOR MOVE
  curDraw=1
  curDrawAl=15
}

if gui_mouseCheckPress(myform,mb_left)
{
  //SELECTING
  if point_in_rectangle(mouseForm_x,mouseForm_y,x,y,x+w,y+h) 
  {
    active=1
    draggable=1
    keyboard_lastkey=-1
    keyboard_lastchar=''
    gui_clickTake()
  }
  else
  {active=0}
  //SELECING
}
else
{
  if mouse_check_button_pressed(mb_left)
  {active=0}
}

if !mbCheck
{draggable=0}

