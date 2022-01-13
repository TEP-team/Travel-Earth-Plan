/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

var compressedIron = <pneumaticcraft:ingot_iron_compressed>;
var compressedIronBlock = <pneumaticcraft:compressed_iron_block>;
var tube = <pneumaticcraft:pressure_tube>;

//remove
var remove as IItemStack[] = 
[
    <pneumaticcraft:printed_circuit_board>,<pneumaticcraft:electrostatic_compressor>,
    <pneumaticcraft:compressed_iron_gear>,<pneumaticcraft:amadron_tablet>,
    <pneumaticcraft:vortex_cannon>,<pneumaticcraft:assembly_program:2>
];
for Remove in remove {
    recipes.remove(Remove);
}

//machines
recipes.remove(<pneumaticcraft:pneumatic_cylinder>);
recipes.addShaped(<pneumaticcraft:pneumatic_cylinder>,
    [[null,<pneumaticcraft:cannon_barrel>,null],
     [<pneumaticcraft:plastic:4>,<contenttweaker:cell_empty>,<pneumaticcraft:plastic:4>],
     [<pneumaticcraft:plastic:4>,<pneumaticcraft:ingot_iron_compressed>,<pneumaticcraft:plastic:4>]]);

recipes.remove(<pneumaticcraft:liquid_compressor>);
recipes.addShaped(<pneumaticcraft:liquid_compressor>,
    [[<pneumaticcraft:pressure_tube>,<minecraft:bucket>,<pneumaticcraft:pressure_tube>],
     [<minecraft:lava_bucket>,<pneumaticcraft:air_compressor>,<minecraft:lava_bucket>]]);

recipes.remove(<pneumaticcraft:vortex_tube>);
recipes.addShaped(<pneumaticcraft:vortex_tube>,
    [[compressedIron,tube,compressedIron],
     [<minecraft:lava_bucket>,<pneumaticcraft:heat_frame>,<minecraft:water_bucket>],
     [compressedIron,tube,compressedIron]]);

recipes.remove(<pneumaticcraft:charging_station>);
recipes.addShaped(<pneumaticcraft:charging_station>,
    [[null,tube,null],
     [<pneumaticcraft:plastic:1>,<pneumaticcraft:plastic:1>,<pneumaticcraft:plastic:1>],
     [<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>]]);

recipes.remove(<pneumaticcraft:uv_light_box>);
recipes.addShaped(<pneumaticcraft:uv_light_box>,
    [[<pneumaticcraft:pressure_tube>,<contenttweaker:kyronite_light>,compressedIron],
     [compressedIron,<pneumaticcraft:pcb_blueprint>,compressedIron],
     [compressedIron,compressedIron,compressedIron]]);

recipes.remove(<pneumaticcraft:assembly_laser>);
recipes.addShaped(<pneumaticcraft:assembly_laser>,
    [[<minecraft:ender_pearl>,<pneumaticcraft:pneumatic_cylinder>,<pneumaticcraft:pneumatic_cylinder>],
     [null,null,<pneumaticcraft:pneumatic_cylinder>],
     [compressedIron,<pneumaticcraft:printed_circuit_board>,compressedIron]]);