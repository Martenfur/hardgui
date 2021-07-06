///gui_subbuttonListDestroy()

/*
Destroys all subbuttons and list container.
You MUST put this function in Destroy event 
to prevent memory leakage.
*/

var _subbuttonListSize=ds_list_size(_subbuttonList),
  
for(var i=0; i<_subbuttonListSize i+=1)
{ds_list_destroy(_subbuttonList[|i])}

ds_list_destroy(_subbuttonList)

