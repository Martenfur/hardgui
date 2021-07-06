///_gui_input_text_move(isnum)

var isnum=argument0;

curX=string_width(string_copy(str,1,curPos))

//Moving text.
if curX+textXadd>w-GUI_SPACING_2X*isnum
{textXadd=-curX+w-GUI_SPACING_2X*isnum}
else
{
  if curX+textXadd<0
  {textXadd=-curX}
}

if textXadd+string_width(str)<w-GUI_SPACING_2X*isnum 
&& string_width(str)>w-GUI_SPACING_2X*isnum
{textXadd=-string_width(str)+w-GUI_SPACING_2X*isnum}

if !active
{textXadd=0}
//Moving text.
