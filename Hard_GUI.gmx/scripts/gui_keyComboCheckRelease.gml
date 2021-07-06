///gui_keyComboCheckRelease(index)

/*
Checks key combination release.
*/

with(gui_cntrl)
{
  var keyComboCheck=keyCombo[|argument0];
  return (!keyComboCheck[|0] && keyComboCheck[|1])
}
