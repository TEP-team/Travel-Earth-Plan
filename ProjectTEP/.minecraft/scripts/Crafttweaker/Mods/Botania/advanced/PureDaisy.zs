/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IIngredient;
import mods.botania.PureDaisy;

val remove as IIngredient[] = [
    <minecraft:cobblestone>, <minecraft:sand>,
    <minecraft:packed_ice>, <minecraft:obsidian>,
    <minecraft:snow>
];

for Remove in remove {
    PureDaisy.removeRecipe(Remove);
}

PureDaisy.addRecipe(<minecraft:hay_block>, <minecraft:bone_block>, 300);
PureDaisy.addRecipe(<minecraft:cobblestone>, <minecraft:end_stone>, 75);
PureDaisy.addRecipe(<minecraft:obsidian>, <minecraft:netherrack>, 75);
PureDaisy.addRecipe(<minecraft:gravel>, <minecraft:soul_sand>, 75);