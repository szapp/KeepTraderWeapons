/*
 * This script is taken from https://forum.worldofplayers.de/forum/threads/?p=25954713
 *
 * When using in other projects, make sure to remove the "Patch_KTW_" prefix from all symbols! Please mention the above
 * source.
 */


/*
 * Intercept default equipping of best ranged and melee weapons of NPCs. Best weapons will now only be equipped if no
 * weapon of respective type is not already equipped. This will prevent trading NPCs to block the best weapon.
 *
 * - Requires Ikarus, LeGo (HookEngine)
 * - Compatible with Gothic, Gothic Sequel, Gothic 2, and Gothic 2 NotR
 *
 * Call FixEquipBestWeapons_Init from Init_Global.
 */
func void Patch_KTW_FixEquipBestWeapons_Init() {
    const int once = 0;
    if (!once) {
        MEM_InitAll();

        const int oCNpc__Enable_equipBestWeapons[4] = { /*G1*/6955616, /*G1A*/7162498, /*G2*/7238946, /*G2A*/7626662 };
        var int addr; addr = oCNpc__Enable_equipBestWeapons[KTW_EXE];

        // Remove default equipping of best melee and ranged weapon to add more conditions
        const int nop20Bytes[5] = { -1869574000, -1869574000, -1869574000, -1869574000, -1869574000 }; //0x90 * 20
        MemoryProtectionOverride(addr, 18);
        MEM_CopyBytes(_@(nop20Bytes), addr, 18);

        HookEngineF(addr, 5, Patch_KTW__FixEquipBestWeapons);

        once = 1;
    };
};

func void Patch_KTW_NpcEquipBestWeaponByType(var C_Npc npc, var int type) {
    const int oCNpc__EquipBestWeapon[4] = { /*G1*/6988320, /*G1A*/7196944, /*G2*/7274832, /*G2A*/7663408 };
    var int npcPtr; npcPtr = _@(npc);
    const int call = 0;
    if (CALL_Begin(call)) {
        CALL_IntParam(_@(type));
        CALL__thiscall(_@(npcPtr), oCNpc__EquipBestWeapon[KTW_EXE]);
        call = CALL_End();
    };
};

func void Patch_KTW__FixEquipBestWeapons() {
   const int ITEM_KAT_NF = 1 << 1;
   const int ITEM_KAT_FF = 1 << 2;

    var C_Npc npc; npc = _^(ESI);

    if (!Npc_HasEquippedMeleeWeapon(npc))
    && (!Npc_HasReadiedMeleeWeapon(npc)) {
        Patch_KTW_NpcEquipBestWeaponByType(npc, ITEM_KAT_NF);
    };

    if (!Npc_HasEquippedRangedWeapon(npc))
    && (!Npc_HasReadiedRangedWeapon(npc)) {
        Patch_KTW_NpcEquipBestWeaponByType(npc, ITEM_KAT_FF);
    };
};
