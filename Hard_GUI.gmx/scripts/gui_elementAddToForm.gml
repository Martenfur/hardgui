///gui_elementAddToForm(ev_STEPBEGIN,ev_STEP,ev_STEPEND,ev_DRAWBEGIN,ev_DRAW,ev_DRAWEND)

/*
Adds GUI element to current active form (see gui_formSetTarget)
and sets STEP and DRAW events to certain form.
Use NOEVENT macros if you don't want any events assigned.
*/

with(gui_cntrl)
{other.myform=ds_stack_top(defForm)}

ds_list_add(myform.myobjects,id)

__eventSTEP[0]=argument0
__eventSTEP[1]=argument1
__eventSTEP[2]=argument2
__eventDRAW[0]=argument3
__eventDRAW[1]=argument4
__eventDRAW[2]=argument5

