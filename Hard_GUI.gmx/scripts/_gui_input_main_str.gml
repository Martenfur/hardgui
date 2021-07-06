//_gui_input_main_str()

/*
Only for string input field!
*/

if active
{
  //MAIN INPUT 
  if keyboard_lastkey!=-1   && keyboard_lastchar!='' 
  && keyboard_lastchar!='#' && keyboard_lastkey!=13
  && keyboard_lastkey!=9
  { 
    str=string_insert(keyboard_lastchar,str,curPos+1)
    curPos+=1
    keyboard_lastkey=-1
    keyboard_lastchar=''
  }  
  //MAIN INPUT
}
