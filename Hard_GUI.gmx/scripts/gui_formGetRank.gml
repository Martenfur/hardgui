///gui_formGetRank(form)

/*
Returns rank of given form.
*/

var get_form,get_rank;
get_form=argument0
get_rank=0

while(1)
{
  if get_form.myform=gui_cntrl || get_form.myform=noone
  {return get_rank}
  else
  {
    get_form=get_form.myform
    get_rank+=1
  }
}
