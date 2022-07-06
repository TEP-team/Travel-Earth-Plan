/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.thermalexpansion.InductionSmelter;

/* using global variables (dirtydust, ingot, ore) */
val ores as IItemStack[] = ore + <immersiveengineering:ore:5> + <immersiveengineering:ore:1>;
for ores in ores {
    InductionSmelter.removeRecipe(<minecraft:sand>, ores);
    InductionSmelter.removeRecipe(<thermalfoundation:material:865>, ores);
    InductionSmelter.removeRecipe(<thermalfoundation:material:866>, ores);
}