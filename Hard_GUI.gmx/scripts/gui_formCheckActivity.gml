///gui_formCheckActivity(form)
/*
Checks activity of the form.
*/

get_form=argument0

if instance_exists(get_form) && get_form!=gui_cntrl
{
  while(1)
  {
    if get_form.active
    {
      if get_form.myform=gui_cntrl || get_form.myform=noone
      {return 1}  
      else
      {get_form=get_form.myform}
    }
    else
    {return 0}    
  }
}

if get_form=gui_cntrl
{return 1}
else
{return 0}
