///_gui_input_main_num()

/*
Only for number input field!
*/

if active
{
  //DOT SEEK
  if keyboard_lastchar='.'
  {
    var noDot;
    noDot=1
    for(i=1 i<=string_length(str) i+=1)
    {
      if string_char_at(str,i)='.'
      {
        noDot=0
        break
      } 
    }
  }
  //DOT SEEK  

  //MAIN INPUT 
  if (((keyboard_lastkey>=48 && keyboard_lastkey<=57) || (keyboard_lastchar='.' && noDot)) && string_char_at(str,curPos+1)!='-')
  || (keyboard_lastkey=189 && curPos=0 && string_char_at(str,1)!='-')
  { 
    str=string_insert(keyboard_lastchar,str,curPos+1)
    curPos+=1
    keyboard_lastkey=-1
    keyboard_lastchar=''
  }  
  //MAIN INPUT
}
