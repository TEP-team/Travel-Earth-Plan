/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

val remove as IItemStack[] = [
    <appliedenergistics2:material:40>, <appliedenergistics2:material:39>,
    <extracells:storage.casing:1>, <extracells:storage.casing:2>,
];

for Remove in remove {
    recipes.remove(Remove);
}

val storages as IItemStack[][IItemStack] = {
    <appliedenergistics2:material:39> : [<appliedenergistics2:storage_cell_1k>, <appliedenergistics2:storage_cell_4k>, <appliedenergistics2:storage_cell_16k>, <appliedenergistics2:storage_cell_64k>, <extracells:storage.physical:0>, <extracells:storage.physical:1>, <extracells:storage.physical:2>, <extracells:storage.physical:3>],
    <extracells:storage.casing:1> : [<appliedenergistics2:fluid_storage_cell_1k>, <appliedenergistics2:fluid_storage_cell_4k>, <appliedenergistics2:fluid_storage_cell_16k>, <appliedenergistics2:fluid_storage_cell_64k>, <extracells:storage.fluid:4>, <extracells:storage.fluid:5>, <extracells:storage.fluid:6>],
    <extracells:storage.casing:2> : [<extracells:storage.gas:0>, <extracells:storage.gas:1>, <extracells:storage.gas:2>, <extracells:storage.gas:3>, <extracells:storage.gas:4>, <extracells:storage.gas:5>, <extracells:storage.gas:6>]
};

val components as IItemStack[][IItemStack] = {
    <appliedenergistics2:material:39> : [<appliedenergistics2:material:35>, <appliedenergistics2:material:36>, <appliedenergistics2:material:37>, <appliedenergistics2:material:38>, <extracells:storage.component:0>, <extracells:storage.component:1>, <extracells:storage.component:2>, <extracells:storage.component:3>],
    <extracells:storage.casing:1> : [<appliedenergistics2:material:54>, <appliedenergistics2:material:55>, <appliedenergistics2:material:56>, <appliedenergistics2:material:57>, <extracells:storage.component:8>, <extracells:storage.component:9>, <extracells:storage.component:10>],
    <extracells:storage.casing:2> : [<extracells:storage.component:11>, <extracells:storage.component:12>, <extracells:storage.component:13>, <extracells:storage.component:14>, <extracells:storage.component:15>, <extracells:storage.component:16>, <extracells:storage.component:17>]
};

for storage, cells in storages {
    for i, cell in cells {
        recipes.remove(cell);
        RecipeUtils.recipeShapeless(cell, [storage, components[storage][i]], true);
    }
}

RecipeUtils.recipeCenterSide(<mekanismgenerators:reactorglass:1>, <mekanism:basicblock:10>, <ore:blockRedstone>, true);

RecipeUtils.recipeShaped(<appliedenergistics2:interface>,
    [[<ore:ingotIron>, <appliedenergistics2:quartz_glass>, <ore:ingotIron>],
     [<appliedenergistics2:material:44>, <appliedenergistics2:material:45>, <appliedenergistics2:material:43>],
     [<ore:ingotIron>, <appliedenergistics2:quartz_glass>, <ore:ingotIron>]], true);