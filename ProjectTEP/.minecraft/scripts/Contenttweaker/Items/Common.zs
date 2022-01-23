/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker
import scripts.Classes.ContentUtils.ContentUtils;

val ContentUtils as ContentUtils = ContentUtils("Instanced");

ContentUtils.itemBuilder("snow_tool", "uncommon", 120, 1, false).register();
ContentUtils.itemBuilder("conversion_core", "uncommon", -1, 64, true).register();
ContentUtils.itemBuilder("rainbow_rune", "epic", -1, 64, true).register();

var epic as string[] = 
[
    "shinystar_ingot", "shinystar_matter", "super_coil",
    "world_core", "sky_core", "ground_core", "mana_core",
    "machinery_core", "life_core", "shiny_core", "smart_core",
    "seasons_core", "heaven_core"
];

var tools as string[] = [
    "sieve_string", "handsaw_wood", "hammer_plate",
    "capacitance_pack", "resistance_pack", "nano_pack"
];

var materials as string[] = [
    "iron_with_nickel", "tin_solder_dust", "ingot_is", "ingot_in",
    "papers", "paper_ee", "cell_electrolyte", "cell_empty", "cell_cold",
    "cell_dt", "wood_residue", "metal_stick","cloth_string", "motor",
    "pc", "ram", "rom", "cpu", "ft_exe","exe", "pcb", "pin", "electric_iron",
    "temperature_monitor", "test_unit", "mini_driver", "mediuim_driver",
    "huge_driver", "singlechip", "gc_exe", "gc_singlechip", "ft_singlechip"
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