/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 39000
import mods.botania.ElvenTrade;

//pcb_blueprint
ElvenTrade.addRecipe([<pneumaticcraft:pcb_blueprint>],[<contenttweaker:blueprint_empty>,<mekanism:controlcircuit:2>,<environmentaltech:pladium_crystal>*9]);
ElvenTrade.addRecipe([<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:energy_dismantler"})],[<minecraft:paper>,<forge:bucketfilled>.withTag({FluidName: "electrolyte", Amount: 1000}),<minecraft:emerald>*8]);