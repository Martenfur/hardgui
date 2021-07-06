///gui_subbuttonUpdate(id,x1,y1,x2,y2)

/*
Updates existing subbutton.
*/

if argument[0]<ds_list_size(_subbuttonList)
{
  var _subbutton=_subbuttonList[|argument[0]];
  
  for(var i=0; i<4 i+=1)
  {_subbutton[|i]=argument[i+1]}
}


