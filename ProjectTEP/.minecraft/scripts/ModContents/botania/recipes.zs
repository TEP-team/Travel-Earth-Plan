/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#priority 28994
import crafttweaker.item.IItemStack;

recipes.remove(<botania:fertilizer>);
recipes.addShapeless(<botania:fertilizer>,
    [<minecraft:dye:15>,<botania:dye:*>,<botania:dye:*>,<botania:dye:*>,<botania:dye:*>]);

recipes.addShapeless(<botania:fertilizer>*2,
    [<botania:fertilizer>,<cropdusting:poop>]);

