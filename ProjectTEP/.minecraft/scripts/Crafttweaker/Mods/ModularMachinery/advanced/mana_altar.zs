/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000

val machine as string = "mana_altar";

ModularUtils.emptyRecipeBuilder(machine ~ "_0", machine, 10).
    addItemInput(<minecraft:snowball>).
    addManaOutput(50).
    build();

ModularUtils.itemRecipeBuilder(machine ~ "_1", machine, 300, 10000,
    [<botania:pylon>, <botania:manaresource:4>],
    [<botania:pylon:1>], true, false).build();

ModularUtils.itemRecipeBuilder(machine ~ "_2", machine, 400, 15000,
    [<botania:pylon:1>, <botania:manaresource:7>],
    [<botania:pylon:2>], true, false).build();

ModularUtils.itemRecipeBuilder(machine ~ "_3", machine, 200, 20000,
    [<minecraft:pumpkin>, <minecraft:rotten_flesh>, <minecraft:bone>, <minecraft:spider_eye>],
    [<botania:felpumpkin>], true, false).build();

ModularUtils.itemRecipeBuilder(machine ~ "_4", machine, 1200, 5000000,
    [<mekanism:ingot:3>*4, <appliedenergistics2:material:37>, <botania:manaresource:1>, <botania:rune:12>, <botania:rune:8>, <contenttweaker:tp_gem>],
    [<mekanism:teleportationcore>], true, false).build();

ModularUtils.itemRecipeBuilder(machine ~ "_5", machine, 200, 20000,
    [<botania:storage:2>*2, <botania:manaresource:14>*4, <contenttweaker:shinystar_ingot>*2, <minecraft:nether_star>],
    [<botania:flighttiara>], true, false).build();