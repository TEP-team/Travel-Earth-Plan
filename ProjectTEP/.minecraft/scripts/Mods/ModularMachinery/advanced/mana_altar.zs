/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

function manaItemsBuilder(name as string, tick as int, mana as int, input1 as IItemStack, input2 as IItemStack, output as IItemStack) {
    RecipeBuilder.newBuilder(name, "mana_altar", tick).
    addManaInput(mana).
    addItemInput(input1).
    addItemInput(input2).
    addItemOutput(output).
    build();
}

//snow_ball_mana
RecipeBuilder.newBuilder("snow_ball_mana", "mana_altar", 10).
addItemInput(<minecraft:snowball>).
addFluidOutput(<liquid:water>).
addManaOutput(50).
build();

//natura pylon
manaItemsBuilder("item:0", 300, 10000, <botania:pylon>, <botania:manaresource:4>, <botania:pylon:1>);

//gaia pylon
manaItemsBuilder("item:1", 400, 15000, <botania:pylon:1>, <botania:manaresource:7>, <botania:pylon:2>);

//Elven Gateway Core
manaItemsBuilder("item:2", 600, 60000, <contenttweaker:blueprint_empty>, <botania:manaresource:4>, <contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aElven Gateway Core"]}}));