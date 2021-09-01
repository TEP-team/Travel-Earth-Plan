/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 39000
import crafttweaker.item.IIngredient;
import mods.botania.ManaInfusion;

//remove
val remove as IIngredient[] = 
[
    <botania:manabottle>,<botania:manacookie>,<minecraft:wheat_seeds>,
    <minecraft:carrot>,<minecraft:pumpkin_seeds>,<minecraft:melon_seeds>,
    <minecraft:potato>,<minecraft:beetroot_seeds>,<minecraft:dye:3>
];
for Remove in remove {
    ManaInfusion.removeRecipe(Remove);
}

//add
ManaInfusion.addInfusion(<botania:felpumpkin>,<minecraft:pumpkin>,20000);