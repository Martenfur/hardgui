///gui_createButton(x,y,w,h,str)
/*
!!!x and y are counting from center!!!

Add this code after the function to create button with icon on it instead of text.

ico=1
//RELEASED
icoAttr[0,0]=s_test   //sprite
icoAttr[0,1]=0        //subimg
icoAttr[0,2]=GUI_C_BRIGHT //color
//RELEASED

//PRESSED
icoAttr[1,0]=s_test
icoAttr[1,1]=0
icoAttr[1,2]=GUI_C_DARK
//PRESSED
*/
var new;
new=instance_create(argument0-argument2/2,argument1-argument3/2,gui_button)
new.w=  argument2
new.h=  argument3
new.str=argument4
return new
