/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000

val machine as string = "energy_dismantler";

ModularUtils.itemRecipeBuilder(machine ~ "_0", machine, 2400, 4000,
    [<contenttweaker:shinystar_matter>, <botania:manaresource:7>],
    [<contenttweaker:shinystar_ingot>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_1", machine, 600, 100,
    [<minecraft:skull:1>*3, <minecraft:soul_sand>*4, <minecraft:glowstone>*2, <minecraft:ender_pearl>*2, <minecraft:lit_pumpkin>, <botania:manaresource:4>, <botania:rune:8>],
    [<minecraft:nether_star>], true, true).build();