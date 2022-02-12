/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 80000
import crafttweaker.item.IItemStack;
import mods.dropt.Dropt;
import scripts.Classes.BasicUtils.BasicUtils;

val BasicUtils as BasicUtils = BasicUtils("Instanced");
val Items as IItemStack[][] = BasicUtils.getAllMaterialPartItem();
val dust as IItemStack[] = Items[3] + <mekanism:dirtydust:1> + <mekanism:dirtydust:2>;
val ore as IItemStack[] = [
    <immersiveengineering:ore:3>, <contenttweaker:sub_block_holder_0:3>,
    <contenttweaker:sub_block_holder_0:1>, <mekanism:oreblock:2>,
    <immersiveengineering:ore:2>, <contenttweaker:sub_block_holder_0:4>,
    <minecraft:iron_ore>, <immersiveengineering:ore:4>,
    <mekanism:oreblock:1>, <minecraft:gold_ore>, <mekanism:oreblock:1>
];

for i, dusts in dust {
    Dropt.list("ore")
        .add(Dropt.rule()
            .matchBlocks([ItemHelper.getItemID(ore[i], true)])
            .addDrop(Dropt.drop()
                .items([dusts])));
}