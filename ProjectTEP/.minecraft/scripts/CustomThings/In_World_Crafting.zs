/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#priority 32748
import crafttweaker.item.IItemStack;
import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FireCrafting;

//FluidToItem
FluidToItem.transform(<contenttweaker:paper_ee>,<liquid:electrolyte>,[<minecraft:paper>],true);

//FireCrafting
FireCrafting.addRecipe(<minecraft:blaze_rod>,<contenttweaker:metal_stick>*4,100);