///gui_formPopup(form)
/*
Places form with given id on top.

WARNING: This function regenerates
both Draw and Click lists, so it can
mess up everything if used while 
checking them.  
*/

var pu_l,pu_found,pu_bufId,pu_bufRank;

with(gui_cntrl)
{
  pu_l=      ds_grid_width(formListDraw)
  pu_found=  0
  pu_bufId=  noone
  pu_bufRank=0
  for(var pu_i=0; pu_i<pu_l-1 pu_i+=1)
  {
    if !pu_found
    {
      if formListDraw[#pu_i,0]=argument0 //if form was found
      {
        pu_bufId=  formListDraw[#pu_i,0] //buffering our form
        pu_bufRank=formListDraw[#pu_i,1]
   
        formListDraw[#pu_i,0]=formListDraw[#pu_i+1,0] //owerwriting it
        formListDraw[#pu_i,1]=formListDraw[#pu_i+1,1] 
        pu_found=1
      }
    }
    else
    {
      formListDraw[#pu_i,0]=formListDraw[#pu_i+1,0]
      formListDraw[#pu_i,1]=formListDraw[#pu_i+1,1] 
    }
    
  }
 
  if pu_found
  {
    formListDraw[#pu_l-1,0]=pu_bufId
    formListDraw[#pu_l-1,1]=pu_bufRank
    _gui_formListSort()
    _gui_formListClickPrepare() 
  }
  
  if argument0.myform.object_index=gui_form
  {_gui_formPopup(argument0.myform)}

}
