///_gui_formClickGive(form,click_type)

/*
Gives click to a given form and sets click state to 3
to all its parents.
*/

var formBuf=argument0;

formBuf.clickable=argument1

while(1)
{
  formBuf=formBuf.myform
  formBuf.clickable=3
  
  if formBuf=gui_cntrl
  {break}
}

