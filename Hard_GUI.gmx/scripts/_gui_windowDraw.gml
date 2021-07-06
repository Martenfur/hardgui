///gui_windowDraw()

/*
Draws window. 
*/

//HEADER
draw_sprite_stretched_ext(s_pixel,0,headerX-1,headerY,w+2,h*active+GUI_SPACING_4X+1,GUI_C_DARK,1)//border

draw_set_color (GUI_C_BRIGHT)
draw_set_font  (GUI_FONT)
draw_set_halign(fa_left)
draw_set_valign(fa_center)

var headerStrTrim=stringTrimWidth(headerStr,w-GUI_SPACING_4X*3);
draw_text(
          floor(headerX+GUI_SPACING),
          floor(headerY+GUI_SPACING_4X/2),headerStrTrim)
//HEADER
         
//BUTTONS
if bHideEn || bCloseEn
{
  var cdr;
  
  //hide
  if bHideEn
  {
    if bHideHighlight
    {
      cdr=GUI_C_DARK //pressed
      draw_sprite_stretched_ext(s_pixel,0,headerX+w-GUI_SPACING_4X*2,headerY,GUI_SPACING_4X,GUI_SPACING_4X,GUI_C_BRIGHT,1)
      bHideHighlight=0
    }
    else
    {cdr=GUI_C_BRIGHT} //released
  }
  else
  {cdr=GUI_C_MEDIUM} //inactive
  draw_sprite_ext(s_gui_hide,0, headerX+w-GUI_SPACING_4X*2,headerY,1,1,0,cdr,1)
  //hide

  //close
  if bCloseEn
  {
    if bCloseHighlight
    {
      cdr=GUI_C_DARK //pressed
      draw_sprite_stretched_ext(s_pixel,0,headerX+w-GUI_SPACING_4X,headerY,GUI_SPACING_4X,GUI_SPACING_4X,GUI_C_BRIGHT,1)
      bCloseHighlight=0
    }
    else
    {cdr=GUI_C_BRIGHT} //released
  }
  else
  {cdr=GUI_C_MEDIUM} //inactive
  draw_sprite_ext(s_gui_cross,0,headerX+w-GUI_SPACING_4X,  headerY,1,1,0,cdr,1)
  //close
}
//BUTTONS

if active
{
  if !surface_exists(surf)
  {surf=surface_create(w,h)}
  draw_surface(surf,x,y)
}

