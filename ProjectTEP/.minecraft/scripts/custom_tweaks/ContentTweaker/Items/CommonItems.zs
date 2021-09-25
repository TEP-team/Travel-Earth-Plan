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

function itemBuilder(name as string, rarity as string, maxdamage as int, maxstacksize as int, glowing as bool) {
    var item as Item = VanillaFactory.createItem(name);
    item.rarity = rarity;
    item.maxDamage = maxdamage;
    item.maxStackSize = maxstacksize;
    item.glowing = glowing;
    item.register();
}

itemBuilder("snow_tool", "uncommon", 120, 1, false);
itemBuilder("conversion_core", "uncommon", -1, 64, true);
itemBuilder("rainbow_rune", "epic", -1, 64, true);

var epic_items as string[] = 
[
    "shinystar_ingot","shinystar_matter","super_coil",
    "world_core","sky_core","ground_core","mana_core",
    "machinery_core","life_core","shiny_core","smart_core",
    "seasons_core","heaven_core"
];
for ei in epic_items {
    itemBuilder(ei, "epic", -1, 64, true);
}

var basic_tools as string[] = ["sieve_string","handsaw_wood","hammer_plate"];
for bt in basic_tools {
    itemBuilder(bt, "uncommon", 90, 1, false);
}

var basic_materials as string[] = 
[
    "iron_with_nickel","tin_solder_dust","ingot_is","ingot_in",
    "papers","paper_ee","cell_electrolyte","cell_empty","cell_cold",
    "cell_dt","wood_residue","big_wood_residue","metal_stick",
    "cloth_string","motor","blueprint_empty","pc","ram","rom",
    "blueprint_machine","blueprint_gun","cpu","ft_exe","exe",
    "pcb","pin","temperature_monitor","test_unit","mini_driver",
    "mediuim_driver","huge_driver","singlechip","gc_exe",
    "gc_singlechip","ft_singlechip","hot_water","basic_uper",
    "medium_uper","adv_uper"
];
for bm in basic_materials {
    itemBuilder(bm, "common", -1, 64, false);
}

var tools as string[] = ["electric_iron","capacitance_pack","resistance_pack","nano_pack"];
for t in tools {
    itemBuilder(t, "uncommon", 150, 1, false);
}