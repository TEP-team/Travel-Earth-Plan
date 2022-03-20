/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker
import mods.zenutils.cotx.Item;

ContentUtils.itemBuilder("conversion_core", "uncommon", -1, 64, true).register();
ContentUtils.itemBuilder("rainbow_rune", "epic", -1, 64, true).register();
ContentUtils.itemBuilder("pc", "uncommon", -1, 1, false).register();

var epic as string[] = 
[
    "shinystar_ingot", "shinystar_matter", "super_coil",
    "world_core", "sky_core", "ground_core", "mana_core",
    "machinery_core", "life_core", "shiny_core", "smart_core",
    "seasons_core", "heaven_core", "rainbow_gem", "warm_paste"
];

var tools as string[] = [
    "handsaw_wood", "hammer_plate", "electric_iron",
    "nano_pack", "capacitance_pack", "resistance_pack",
];

var materials as string[] = [
    "tin_solder_dust", "ingot_is", "papers", "paper_ee",
    "cell_empty", "cell_electrolyte", "cell_cold",
    "cell_dt", "wood_residue", "cloth_string", "motor",
    "ram", "rom", "cpu", "exe", "pcb", "pin", "gc_exe", "ft_exe",
    "test_unit", "temperature_monitor", "mini_driver", "mediuim_driver",
    "huge_driver", "singlechip", "ft_singlechip", "gc_singlechip"
];

for Epic in epic {
    ContentUtils.itemBuilder(Epic, "epic", -1, 64, true).register();
}

for Tools in tools {
    ContentUtils.itemBuilder(Tools, "uncommon", 90, 1, false).register();
}

for Materials in materials {
    ContentUtils.itemBuilder(Materials, "common", -1, 64, false).register();
}