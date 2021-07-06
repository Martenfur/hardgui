///gui_keyComboCheck(index)

/*
Checks key combination.
*/

with(gui_cntrl)
{
  var keyComboCheck=keyCombo[|argument0];
  return keyComboCheck[|0]
}
