
//COLOR CHANGE
if bCheck
{
  c1=GUI_C_BRIGHT
  c2=GUI_C_DARK
}
else
{
  c1=GUI_C_DARK
  c2=GUI_C_BRIGHT
}
//COLOR CHANGE

//DRAW
draw_sprite_stretched_ext(s_pixel,0,x,y,w,h,GUI_C_MEDIUM,1)
draw_sprite_stretched_ext(s_pixel,0,x+1,y+1,w-2,h-2,c1,1)

if ico
{draw_sprite_ext(icoAttr[bCheck,0],icoAttr[bCheck,1],x+w/2,y+h/2,1,1,0,icoAttr[bCheck,2],1)}//drawing icon
else
{
  //drawing text
  draw_set_font(GUI_FONT)
  draw_set_color(c2)
  draw_set_halign(fa_center)
  draw_set_valign(fa_center)
  draw_text(x+w/2,y+h/2,str)
  //drawing text
}
//DRAW
