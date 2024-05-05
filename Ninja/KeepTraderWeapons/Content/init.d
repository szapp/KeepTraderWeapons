/*
 * Menu initialization function called by Ninja every time a menu is opened
 */
func void Ninja_KeepTraderWeapons_Menu(var int menuPtr) {
    Patch_KTW_FixEquipBestWeapons_Init();
};
