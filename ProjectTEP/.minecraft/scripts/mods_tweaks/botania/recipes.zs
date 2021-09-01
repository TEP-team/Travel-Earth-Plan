/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 40000
import crafttweaker.item.IItemStack;

var rs = <ore:dustRedstone>;

//remove
var remove as IItemStack[] = 
[
    <botania:manaresource:14>,<botania:felpumpkin>,<botania:pylon>,<botania:pylon:1>,
    <botania:pylon:2>,<botania:cellblock>,<botania:bifrostperm>
];
for Remove in remove {
    recipes.remove(Remove);
}

//add
recipes.remove(<botania:fertilizer>);
recipes.addShapeless(<botania:fertilizer>,
    [<minecraft:dye:15>,<botania:dye:*>,<botania:dye:*>,<botania:dye:*>,<botania:dye:*>]);

recipes.addShapeless(<botania:fertilizer>*2,
    [<botania:fertilizer>,<cropdusting:poop>]);