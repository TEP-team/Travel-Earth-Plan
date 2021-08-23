/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 39000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.pneumaticcraft.pressurechamber;

//remove
pressurechamber.removeAllRecipes();

//add
val capacitor as IIngredient[] = 
[
    <pneumaticcraft:plastic:4>,<contenttweaker:conversion_core>,
    <pneumaticcraft:ingot_iron_compressed>
];

val empty_pcb as IIngredient[] = 
[
    <pneumaticcraft:plastic:2>,<pneumaticcraft:plastic:11>,
    <pneumaticcraft:ingot_iron_compressed>
];

val transistor as IIngredient[] = 
[
    <pneumaticcraft:plastic:8>,<contenttweaker:conversion_core>,
    <pneumaticcraft:ingot_iron_compressed>
];

val etchacid as IIngredient[] = 
[
    <forge:bucketfilled>.withTag({FluidName: "electrolyte", Amount: 1000}),
    <minecraft:gunpowder>*3,<minecraft:coal:1>*3,<minecraft:flint>*3
];

pressurechamber.addRecipe([<minecraft:paper>*8], 1.0, [<contenttweaker:papers>]);
pressurechamber.addRecipe([<minecraft:iron_block>*2], 2.0, [<pneumaticcraft:compressed_iron_block>]);
pressurechamber.addRecipe([<minecraft:iron_ingot>*2], 2.0, [<pneumaticcraft:ingot_iron_compressed>]);
pressurechamber.addRecipe(capacitor, 1.0, [<pneumaticcraft:capacitor>]);
pressurechamber.addRecipe(empty_pcb, 1.5, [<pneumaticcraft:empty_pcb:100>]);
pressurechamber.addRecipe(transistor, 1.0, [<pneumaticcraft:transistor>]);
pressurechamber.addRecipe([<pneumaticcraft:plastic:8>,<minecraft:redstone>*2], 1.0, [<pneumaticcraft:turbine_blade>]);
pressurechamber.addRecipe(etchacid, 1.0, [<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})]);