///gui_formGetGlobalCoords(form)

/*
Returns form coordinates relatively to the 0;0 of screen.
(xGlobal, yGlobal).
*/

var getc_form;
getc_form=argument0

if instance_exists(getc_form) && getc_form!=gui_cntrl
{

  xGlobal=getc_form.x
  yGlobal=getc_form.y

  while(1)
  {
    if getc_form.myform=gui_cntrl || getc_form.myform=noone
    {break}
    else
    {
      getc_form=getc_form.myform
      xGlobal+=getc_form.x
      yGlobal+=getc_form.y
    }
  }
}
else
{
  xGlobal=0
  yGlobal=0
}
