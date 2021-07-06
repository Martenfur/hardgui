///gui_mouseCheckPress(form,button)

if global.clickHolder=noone
{return (argument0.clickable==1 && mouse_check_button_pressed(argument1))}
else
{return (global.clickHolder==id && mouse_check_button_pressed(argument1))}

