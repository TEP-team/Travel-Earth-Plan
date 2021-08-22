/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70004
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

//snow_tool
var st = VanillaFactory.createItem("snow_tool");
st.maxDamage = 120;
st.maxStackSize = 1;
st.rarity = "uncommon";
st.register();

//===============================================================

//conversion_core
var coc = VanillaFactory.createItem("conversion_core");
coc.glowing = true;
coc.rarity = "uncommon";
coc.register();

//===============================================================

//rainbow_rune
var rrune = VanillaFactory.createItem("rainbow_rune");
rrune.glowing = true;
rrune.rarity = "epic";
rrune.register();
//===============================================================

var epic_items as string[] = 
[
    "shinystar_ingot","shinystar_matter","super_coil",
    "world_core","sky_core","ground_core","mana_core",
    "machinery_core","life_core","shiny_core","smart_core",
    "seasons_core","heaven_core"
];
for ei in epic_items {
    var EI = VanillaFactory.createItem(ei);
    EI.rarity = "epic";
    EI.glowing = true;
    EI.register();
}

//===============================================================

var basic_tools as string[] = ["sieve_string","handsaw_wood","hammer_plate"];
for bt in basic_tools {
    var BT = VanillaFactory.createItem(bt);
    BT.maxDamage = 90;
    BT.maxStackSize = 1;
    BT.rarity = "uncommon";
    BT.register();
}

//===============================================================

var basic_materials as string[] = 
[
    "iron_with_nickel","tin_solder_dust","ingot_is","ingot_in",
    "glass_fibre","papers","paper_ee","cell_electrolyte",
    "cell_empty","cell_cold","cell_dt","wood_residue",
    "big_wood_residue","metal_stick","cloth_string",
    "common_code","error_code","motor","blueprint_empty",
    "blueprint_machine","blueprint_gun"
];
for bm in basic_materials {
    var BM = VanillaFactory.createItem(bm);
    BM.register();
}

//===============================================================

var tools as string[] = ["electric_iron","capacitance_pack","resistance_pack","nano_pack"];
for t in tools {
    var Tools = VanillaFactory.createItem(t);
    Tools.rarity = "uncommon";
    Tools.maxStackSize = 1;
    Tools.register();
}

//===============================================================

var computer_items as string[] = ["pc","ram","rom","cpu","pcb","pin"];
for ci in computer_items {
    var CI = VanillaFactory.createItem(ci);
    CI.register();
}

//===============================================================

var machine_items as string[] =
[
    "temperature_monitor","test_unit","mini_driver",
    "mediuim_driver","huge_driver","singlechip","exe",
    "gc_exe","ft_exe","gc_singlechip","ft_singlechip"
];
for mi in machine_items {
    var MI = VanillaFactory.createItem(mi);
    MI.register();
}