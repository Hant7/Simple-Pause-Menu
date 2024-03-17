if (pauseOption_Select < Min_move) {
	pauseOption_Select = Max_move - 1;
}
if (pauseOption_Select > Max_move - 1) {
	pauseOption_Select = Min_move;
}

if (pauseOptionList_Select < MinList_move) {
	pauseOptionList_Select = MaxList_move - 1;
}
if (pauseOptionList_Select > MaxList_move - 1) {
	pauseOptionList_Select = MinList_move;
}