/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

var level0 as IItemStack[] = [];
var level1 as IItemStack[] = [];
var level2 as IItemStack[] = [];
var level3 as IItemStack[] = [];
var level4 as IItemStack[] = [];
var level5 as IItemStack[] = [];
var level6 as IItemStack[] = [];

for item in loadedMods["modularmachinery"].items {
    val id = ItemHelper.getItemID(item, true);
    if (!(id has "blockcasing")) {
        if (id has "0") level0 += item;
        if (id has "1") level1 += item;
        if (id has "2") level2 += item;
        if (id has "3") level3 += item;
        if (id has "4") level4 += item;
        if (id has "5") level5 += item;
        if (id has "6") level6 += item;
    }
}

for i, level in level1 {
    RecipeUtils.recipeCenterCornerSide(level, <modularmachinery:blockcasing>, <ore:dustRedstone>, level0[i], true);
}

for i, level in level2 {
    RecipeUtils.recipeCenterCornerSide(level, <modularmachinery:blockcasing>, <mekanism:enrichedalloy>, level1[i], true);
}

for i, level in level3 {
    RecipeUtils.recipeCenterCornerTwoSide(level, <modularmachinery:blockcasing>, <mekanism:reinforcedalloy>, <mekanism:enrichedalloy>, level2[i], true);
}

for i, level in level4 {
    RecipeUtils.recipeCenterCornerSide(level, <modularmachinery:blockcasing>, <mekanism:reinforcedalloy>, level3[i], true);
}

for i, level in level5 {
    RecipeUtils.recipeCenterCornerTwoSide(level, <modularmachinery:blockcasing>, <mekanism:atomicalloy>, <mekanism:reinforcedalloy>, level4[i], true);
}

for i, level in level6 {
    RecipeUtils.recipeCenterCornerSide(level, <modularmachinery:blockcasing>, <mekanism:reinforcedalloy>, level5[i], true);
}

RecipeUtils.recipeAround(<modularmachinery:blockcasing>, <ore:plateCopper>, null, true);

RecipeUtils.recipeShaped(<modularmachinery:blockoutputbus>,
    [[<modularmachinery:blockcasing>,<ore:dustRedstone>,<modularmachinery:blockcasing>],
     [<ore:dustRedstone>,<minecraft:chest>,<ore:dustRedstone>],
     [<modularmachinery:blockcasing>,<minecraft:hopper>,<modularmachinery:blockcasing>]], true);

RecipeUtils.recipeShaped(<modularmachinery:blockcontroller>,
    [[<modularmachinery:blockcasing:4>,<ore:paneGlass>,<modularmachinery:blockcasing:4>],
     [<modularmachinery:blockcasing:3>,<modularmachinery:blockcasing:5>,<modularmachinery:blockcasing:3>],
     [<modularmachinery:blockcasing:4>,<mekanism:controlcircuit:1>,<modularmachinery:blockcasing:4>]], true);

RecipeUtils.recipeShaped(<gugu-utils:sparkmanahatch>,
    [[<modularmachinery:blockcasing>,<botania:spark>,<modularmachinery:blockcasing>],
     [<mekanism:reinforcedalloy>,<botania:spreader>,<botania:pool>],
     [<modularmachinery:blockcasing>,<mekanism:reinforcedalloy>,<modularmachinery:blockcasing>]], true);

RecipeUtils.recipeShaped(<gugu-utils:sparkmanahatch:1>,
    [[<modularmachinery:blockcasing>,<botania:spark>,<modularmachinery:blockcasing>],
     [<mekanism:reinforcedalloy>,<botania:pool>,<botania:spreader>],
     [<modularmachinery:blockcasing>,<mekanism:reinforcedalloy>,<modularmachinery:blockcasing>]], true);