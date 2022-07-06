/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

val remove as IItemStack[] = [
    <pneumaticcraft:compressed_iron_gear>, <pneumaticcraft:vortex_cannon>,
    <pneumaticcraft:assembly_program:2>, <pneumaticcraft:printed_circuit_board>
];

for Remove in remove {
    recipes.remove(Remove);
}

RecipeUtils.recipeShaped(<pneumaticcraft:pneumatic_cylinder>,
    [[null, <pneumaticcraft:cannon_barrel>, null], 
     [<pneumaticcraft:plastic:4>, <contenttweaker:cell_empty>, <pneumaticcraft:plastic:4>], 
     [<pneumaticcraft:plastic:4>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:plastic:4>]], true);

RecipeUtils.recipeShaped(<pneumaticcraft:liquid_compressor>,
    [[<pneumaticcraft:pressure_tube>, <minecraft:bucket>, <pneumaticcraft:pressure_tube>], 
     [<minecraft:lava_bucket>, <pneumaticcraft:air_compressor>, <minecraft:lava_bucket>]], true);

RecipeUtils.recipeShaped(<pneumaticcraft:vortex_tube>,
    [[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:pressure_tube>, <pneumaticcraft:ingot_iron_compressed>], 
     [<minecraft:lava_bucket>, <pneumaticcraft:heat_frame>, <minecraft:water_bucket>], 
     [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:pressure_tube>, <pneumaticcraft:ingot_iron_compressed>]], true);

RecipeUtils.recipeShaped(<pneumaticcraft:charging_station>,
    [[null, <pneumaticcraft:pressure_tube>, null], 
     [<pneumaticcraft:plastic:1>, <pneumaticcraft:plastic:1>, <pneumaticcraft:plastic:1>], 
     [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]], true);

RecipeUtils.recipeShaped(<pneumaticcraft:uv_light_box>,
    [[<pneumaticcraft:pressure_tube>, <environmentaltech:erodium_crystal>, <pneumaticcraft:ingot_iron_compressed>], 
     [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:pcb_blueprint>, <pneumaticcraft:ingot_iron_compressed>], 
     [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>]], true);

RecipeUtils.recipeShaped(<pneumaticcraft:assembly_laser>,
    [[<minecraft:ender_pearl>, <pneumaticcraft:pneumatic_cylinder>, <pneumaticcraft:pneumatic_cylinder>], 
     [null, null, <pneumaticcraft:pneumatic_cylinder>], 
     [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:ingot_iron_compressed>]], true);

RecipeUtils.recipeShaped(<pneumaticcraft:assembly_controller>,
    [[null, <ore:paneGlass>, null], 
     [<pneumaticcraft:pressure_tube>, <contenttweaker:cpu>, <pneumaticcraft:printed_circuit_board>], 
     [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>]], true);

RecipeUtils.recipeShaped(<pneumaticcraft:refinery>,
    [[<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:compressed_iron_gear>, <pneumaticcraft:ingot_iron_compressed>], 
     [<pneumaticcraft:ingot_iron_compressed>, <contenttweaker:cell_empty>, <pneumaticcraft:ingot_iron_compressed>], 
     [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:compressed_iron_gear>, <pneumaticcraft:ingot_iron_compressed>]], true);

RecipeUtils.recipeShaped(<pneumaticcraft:thermopneumatic_processing_plant>,
    [[<contenttweaker:cell_empty>, null, <contenttweaker:cell_empty>], 
     [<pneumaticcraft:pressure_tube>, <pneumaticcraft:compressed_iron_gear>, <pneumaticcraft:pressure_tube>], 
     [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>]], true);

RecipeUtils.recipeShaped(<pneumaticcraft:plastic_mixer>,
    [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], 
     [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:compressed_iron_gear>, <pneumaticcraft:ingot_iron_compressed>], 
     [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>]], true);