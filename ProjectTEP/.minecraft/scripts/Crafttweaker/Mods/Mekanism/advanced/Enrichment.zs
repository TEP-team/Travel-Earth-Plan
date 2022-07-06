/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.mekanism.enrichment;

val remove as IItemStack[] = [
    <immersiveengineering:ore:3>, <contenttweaker:sub_block_holder_0:3>, <mekanism:oreblock>,
    <mekanism:oreblock:2>, <immersiveengineering:ore:2>, <minecraft:iron_ore>,
    <immersiveengineering:ore:4>, <mekanism:oreblock:1>, <minecraft:gold_ore>
];

for Remove in remove {
    enrichment.removeRecipe(Remove);
}