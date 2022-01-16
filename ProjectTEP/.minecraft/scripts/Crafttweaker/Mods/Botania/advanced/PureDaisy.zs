/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IIngredient;
import mods.botania.PureDaisy;

//remove
val removeOutput as IIngredient[] = [<minecraft:cobblestone>,<minecraft:sand>,<minecraft:packed_ice>,<minecraft:obsidian>,<minecraft:snow>];
for remove in removeOutput {
    PureDaisy.removeRecipe(remove);
}

//environmentaltech_block
PureDaisy.addRecipe(<environmentaltech:litherite>,<contenttweaker:litherite_light>,750);
PureDaisy.addRecipe(<environmentaltech:erodium>,<contenttweaker:erodium_light>,1050);
PureDaisy.addRecipe(<environmentaltech:kyronite>,<contenttweaker:kyronite_light>,1500);
PureDaisy.addRecipe(<environmentaltech:pladium>,<contenttweaker:pladium_light>,2250);

//bone_block
PureDaisy.addRecipe(<minecraft:hay_block>,<minecraft:bone_block>,300);

//end_stone
PureDaisy.addRecipe(<minecraft:cobblestone>,<minecraft:end_stone>,75);

//netherrack
PureDaisy.addRecipe(<minecraft:obsidian>,<minecraft:netherrack>,75);

//soul_sand
PureDaisy.addRecipe(<minecraft:gravel>,<minecraft:soul_sand>,75);