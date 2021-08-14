/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#priority 28992
import crafttweaker.item.IItemStack;
import mods.botania.PureDaisy;

val removeOutput as IItemStack[] = [<minecraft:cobblestone>,<minecraft:sand>,<minecraft:packed_ice>,<minecraft:obsidian>,<minecraft:snow>];
for remove in removeOutput {
    PureDaisy.removeRecipe(remove);
}

//environmentaltech_block
PureDaisy.addRecipe(<environmentaltech:litherite>,<contenttweaker:litherite_light>,750);
PureDaisy.addRecipe(<environmentaltech:erodium>,<contenttweaker:erodium_light>,1050);
PureDaisy.addRecipe(<environmentaltech:kyronite>,<contenttweaker:kyronite_light>,1500);
PureDaisy.addRecipe(<environmentaltech:pladium>,<contenttweaker:pladium_light>,2250);
PureDaisy.addRecipe(<environmentaltech:ionite>,<contenttweaker:ionite_light>,3300);

//bone_block
PureDaisy.addRecipe(<minecraft:hay_block>,<minecraft:bone_block>,300);

//end_stone
PureDaisy.addRecipe(<minecraft:chorus_flower>,<minecraft:end_stone>,75);