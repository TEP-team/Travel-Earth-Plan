/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.pneumaticcraft.pressurechamber;

pressurechamber.removeAllRecipes();

pressurechamber.addRecipe([<minecraft:paper>*8], 1.0, [<contenttweaker:papers>]);

pressurechamber.addRecipe(
    [<minecraft:iron_block>], 2.0, [<pneumaticcraft:compressed_iron_block>]);

pressurechamber.addRecipe(
    [<minecraft:iron_ingot>], 2.0, [<pneumaticcraft:ingot_iron_compressed>]);

pressurechamber.addRecipe(
    [<pneumaticcraft:plastic:4>,<contenttweaker:conversion_core>,<pneumaticcraft:ingot_iron_compressed>], 1.0, [<pneumaticcraft:capacitor>]);

pressurechamber.addRecipe(
    [<pneumaticcraft:plastic:2>,<pneumaticcraft:plastic:11>,<pneumaticcraft:ingot_iron_compressed>], 1.5, [<pneumaticcraft:empty_pcb:100>]);

pressurechamber.addRecipe(
    [<pneumaticcraft:plastic:8>,<contenttweaker:conversion_core>,<pneumaticcraft:ingot_iron_compressed>], 1.0, [<pneumaticcraft:transistor>]);

pressurechamber.addRecipe(
    [<pneumaticcraft:plastic:8>,<minecraft:redstone>*2], 1.0, [<pneumaticcraft:turbine_blade>]);

pressurechamber.addRecipe(
    [<minecraft:water_bucket>,
    <minecraft:gunpowder>*3,<minecraft:coal:1>*3,<minecraft:flint>*3],
    1.0, [<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})]);

pressurechamber.addRecipe(
    [<pneumaticcraft:empty_pcb>,<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})], 1.5, [<pneumaticcraft:unassembled_pcb>,<minecraft:bucket>]);

pressurechamber.addRecipe(
    [<pneumaticcraft:pressure_tube>*8, <pneumaticcraft:plastic:4>*2], 2.0, [<pneumaticcraft:advanced_pressure_tube>*8]);

pressurechamber.addRecipe(
    [<minecraft:glass>,<mekanism:ingot:6>*4], 1.5, [<contenttweaker:cell_empty>]);

pressurechamber.addRecipe(
    [<pneumaticcraft:printed_circuit_board>*2,<pneumaticcraft:plastic>*4,<pneumaticcraft:ingot_iron_compressed>*8], 3.0, [<contenttweaker:cpu>]);

pressurechamber.addRecipe(
    [<contenttweaker:cell_empty>,<pneumaticcraft:air_canister>], 3.0, [<contenttweaker:cell_cold>,<pneumaticcraft:air_canister:30000>]);

pressurechamber.addRecipe(
    [<contenttweaker:cell_cold>,<pneumaticcraft:air_canister:30000>], 3.0, [<contenttweaker:cell_empty>,<pneumaticcraft:air_canister>]);

pressurechamber.addRecipe(
    [<pneumaticcraft:plastic:12>*4,<contenttweaker:material_part:149>*4,<contenttweaker:material_part:138>*4,<contenttweaker:pcb>*2,<contenttweaker:motor>], 3.8, [<contenttweaker:mini_driver>]);

pressurechamber.addRecipe(
    [<minecraft:coal>], 1.6, [<contenttweaker:material_part:62>]);

pressurechamber.addRecipe(
    [<contenttweaker:material_part:25>,<environmentaltech:kyronite_crystal>*2], 2.0, [<contenttweaker:material_part:42>]);