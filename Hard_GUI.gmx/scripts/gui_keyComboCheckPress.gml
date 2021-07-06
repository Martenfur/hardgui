///gui_keyComboCheckPress(index)

/*
Checks key combination press.
*/

with(gui_cntrl)
{
  var keyComboCheck=keyCombo[|argument0];
  return (keyComboCheck[|0] && !keyComboCheck[|1])
}
