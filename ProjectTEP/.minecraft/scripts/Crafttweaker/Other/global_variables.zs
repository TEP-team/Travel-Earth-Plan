/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 80000
import crafttweaker.item.IItemStack;

global Items as IItemStack[][] = BasicUtils.getAllMaterialPartItem();
global ore as IItemStack[] = BasicUtils.getAllOre();
global ingot as IItemStack[] = Items[0] + <minecraft:gold_ingot> + <mekanism:ingot:1>;
global dust as IItemStack[] = Items[2] + <mekanism:dust:1> + <mekanism:dust:2>;
global dirtydust as IItemStack[] = Items[3] + <mekanism:dirtydust:1> + <mekanism:dirtydust:2>;

global otheringot as IItemStack[] = [
    <immersiveengineering:metal:1>, <immersiveengineering:metal:5>,
    <immersiveengineering:metal:6>, <immersiveengineering:metal:7>,
    <immersiveengineering:metal:8>
];

global otherplate as IItemStack[] = [
    <immersiveengineering:metal:31>, <immersiveengineering:metal:35>,
    <immersiveengineering:metal:36>, <immersiveengineering:metal:37>,
    <immersiveengineering:metal:38>
];