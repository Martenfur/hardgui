///gui_subbuttonListUpdate()

/*
Looks for button presses.
Should be put in Step event.
*/

if _subbuttonActivePressed=3 //If button was released, reset active button.
{_subbuttonActive=-1}

_subbuttonActivePressed=0

if _subbuttonActive=-1
{
  if gui_mouseCheckPress(myform,mb_left)
  {
    var _subbuttonListSize=ds_list_size(_subbuttonList),
        _subbutton;
  
    for(var i=0; i<_subbuttonListSize i+=1)
    {
      _subbutton=_subbuttonList[|i]
      if point_in_rectangle(mouseForm_x,mouseForm_y,
                            x+_subbutton[|0],y+_subbutton[|1],
                            x+_subbutton[|2],y+_subbutton[|3])
      {
        _subbuttonActive=i
        gui_clickTake()
        _subbuttonActivePressed=1
        break
      }   
    }
  }
}
else
{
  if gui_mouseCheck(myform,mb_left)
  {
    var _subbutton=_subbuttonList[|_subbuttonActive];
      
    if point_in_rectangle(mouseForm_x,mouseForm_y,
                          x+_subbutton[|0],y+_subbutton[|1],
                          x+_subbutton[|2],y+_subbutton[|3])
    {_subbuttonActivePressed=2}
  }
  else
  {
    _subbuttonActivePressed=3
  }
}


