///gui_formListSort()
/*
Sorts form list from highest rank to lowest.
*/

with(gui_cntrl)
{
 
  var unsorted,sort_l;
 
  sort_l=ds_grid_width(formListDraw)
  unsorted=1

  while(unsorted)
  {
    unsorted=0
    for(var sort_i=0; sort_i<sort_l-1 sort_i+=1)
    {
      if formListDraw[#sort_i,1]<formListDraw[#sort_i+1,1]
      {
        unsorted=1
        var sort_elBuf;
            
        for(var sort_k=0; sort_k<2 sort_k+=1)
        {
          sort_elBuf=formListDraw[#sort_i,sort_k]
          formListDraw[#sort_i,sort_k]=formListDraw[#sort_i+1,sort_k]
          formListDraw[#sort_i+1,sort_k]=sort_elBuf
        }
      }
    }
  }
 
}

