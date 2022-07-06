/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

val remove as IItemStack[] = [
    <botania:manaresource:14>, <botania:felpumpkin>, <botania:pylon>, <botania:pylon:1>,
    <botania:pylon:2>, <botania:cellblock>, <botania:bifrostperm>, <botania:flighttiara>,
    <botania:poolminecart>
];

for Remove in remove {
    recipes.remove(Remove);
}

RecipeUtils.recipeShaped(<botania:alfheimportal>,
    [[<botania:livingwood>, <botania:manaresource:18>, <botania:livingwood>],
     [<botania:manaresource:18>, <botania:livingwood:5>, <botania:manaresource:18>],
     [<botania:livingwood>, <botania:manaresource:18>, <botania:livingwood>]], true);

RecipeUtils.recipeShaped(<botania:terraplate>,
    [[<mekanism:compresseddiamond>, <botania:manatablet>.withTag({mana: 500000}), <mekanism:compresseddiamond>],
     [<botania:storage>, <botania:rune:8>, <botania:storage>],
     [<pneumaticcraft:plastic:4>, <minecraft:lapis_block>, <pneumaticcraft:plastic:4>]], true);

RecipeUtils.recipeShaped(<botania:runealtar>,
    [[<botania:manaresource:1>,null,<botania:manaresource:1>],
     [<botania:livingrock>,<botania:livingrock>,<botania:livingrock>],
     [<botania:livingrock>,<botania:manaresource:2>,<botania:livingrock>]], true);

RecipeUtils.recipeShapeless(<botania:fertilizer>,
    [<minecraft:dye:15>, <botania:dye:*>, <botania:dye:*>, <botania:dye:*>, <botania:dye:*>], true);

RecipeUtils.recipeShapeless(<botania:fertilizer>*2,
    [<botania:fertilizer>, <cropdusting:poop>], true);