///gui_formDestroy()

var d_formId;
if argument_count=0
{d_formId=id}
else
{
  if !instance_exists(argument[0])
  {return -1}
  else
  {d_formId=argument[0]}
}

with(gui_cntrl)
{
  var d_l,d_replace;
  d_l=ds_grid_width(formListDraw)
  d_replace=0
  for(var d_i=0; d_i<d_l; d_i+=1)
  {
    if d_replace
    {
      formListDraw[#d_i-1,0]=formListDraw[#d_i,0]
      formListDraw[#d_i-1,1]=formListDraw[#d_i,1]
    }
    else
    {
      if formListDraw[#d_i,0]=d_formId
      {d_replace=1}
    }
  }
  //KOSTIL TIME!
  if d_l>1
  {ds_grid_resize(formListDraw,d_l-1,2)}
  else
  {
    ds_grid_destroy(formListDraw)
    formListDraw=ds_grid_create(0,2)
  }
  //KOSTIL TIME!
  _gui_formListClickPrepare()
}

with(d_formId)
{surface_free(surf)}

//show_message("Begin!")
//with(gui_parent)
//{show_message(string(object_get_name(id.object_index))+" "+string(object_get_name(myform.object_index)))}

//CHECKING PARENTS
with(gui_parent)
{
  if d_formId=myform
  {
    if object_index=gui_form
    {gui_formDestroy()}
    else
    {instance_destroy()}
  }
}
//CHECKING PARENTS

with(d_formId)
{instance_destroy()}
