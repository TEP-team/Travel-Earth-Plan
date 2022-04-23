/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.pneumaticcraft.pressurechamber;

pressurechamber.removeAllRecipes();

pressurechamber.addRecipe([<minecraft:water_bucket>, <minecraft:gunpowder>*3, <minecraft:coal:1>*3, <minecraft:flint>*3], 1.0, [<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})]);

pressurechamber.addRecipe([<minecraft:paper>*8], 1.0, [<contenttweaker:papers>]);
pressurechamber.addRecipe([<minecraft:glass>, <ore:plateTin>.firstItem*4], 1.5, [<contenttweaker:cell_empty>]);
pressurechamber.addRecipe([<pneumaticcraft:printed_circuit_board>*2, <pneumaticcraft:plastic>*4, <pneumaticcraft:ingot_iron_compressed>*8], 3.0, [<contenttweaker:cpu>]);
pressurechamber.addRecipe([<pneumaticcraft:plastic:12>*4, <appliedenergistics2:material:36>*2, <contenttweaker:pcb>*2, <contenttweaker:motor>], 3.8, [<contenttweaker:mini_driver>]);

pressurechamber.addRecipe([<minecraft:iron_block>], 2.0, [<pneumaticcraft:compressed_iron_block>]);
pressurechamber.addRecipe([<minecraft:iron_ingot>], 2.0, [<pneumaticcraft:ingot_iron_compressed>]);
pressurechamber.addRecipe([<pneumaticcraft:plastic:4>, <contenttweaker:conversion_core>, <pneumaticcraft:ingot_iron_compressed>], 1.0, [<pneumaticcraft:capacitor>]);
pressurechamber.addRecipe([<pneumaticcraft:plastic:2>, <pneumaticcraft:plastic:11>, <pneumaticcraft:ingot_iron_compressed>], 1.5, [<pneumaticcraft:empty_pcb:100>]);
pressurechamber.addRecipe([<pneumaticcraft:plastic:8>, <contenttweaker:conversion_core>, <pneumaticcraft:ingot_iron_compressed>], 1.0, [<pneumaticcraft:transistor>]);
pressurechamber.addRecipe([<pneumaticcraft:plastic:8>, <minecraft:redstone>*2], 1.0, [<pneumaticcraft:turbine_blade>]);
pressurechamber.addRecipe([<pneumaticcraft:pressure_tube>*8, <pneumaticcraft:plastic:4>*2], 2.0, [<pneumaticcraft:advanced_pressure_tube>*8]);

pressurechamber.addRecipe([<contenttweaker:conversion_core>, <appliedenergistics2:material:45>*4, <appliedenergistics2:material>*4, <ore:dustRedstone>], 2.5, [<appliedenergistics2:material:13>]);
pressurechamber.addRecipe([<contenttweaker:conversion_core>, <appliedenergistics2:material:45>*4, <minecraft:diamond>*4, <ore:dustRedstone>], 2.5, [<appliedenergistics2:material:14>]);
pressurechamber.addRecipe([<contenttweaker:conversion_core>, <appliedenergistics2:material:45>*4, <minecraft:gold_ingot>*4, <ore:dustRedstone>], 2.5, [<appliedenergistics2:material:15>]);
pressurechamber.addRecipe([<contenttweaker:conversion_core>, <appliedenergistics2:material:45>*4, <appliedenergistics2:material:5>*4, <ore:dustRedstone>], 2.5, [<appliedenergistics2:material:19>]);

pressurechamber.addRecipe([<contenttweaker:cell_empty>, <pneumaticcraft:air_canister>], 3.0, [<contenttweaker:cell_cold>, <pneumaticcraft:air_canister:30000>]);
pressurechamber.addRecipe([<contenttweaker:cell_cold>, <pneumaticcraft:air_canister:30000>], 3.0, [<contenttweaker:cell_empty>, <pneumaticcraft:air_canister>]);
pressurechamber.addRecipe([<pneumaticcraft:empty_pcb>, <forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})], 1.5, [<pneumaticcraft:unassembled_pcb>, <minecraft:bucket>]);