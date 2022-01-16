/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IIngredient;
import mods.botania.RuneAltar;

//skull
RuneAltar.removeRecipe(<minecraft:skull:3>);

//pylon
RuneAltar.addRecipe(<botania:pylon>,[<botania:storage>,<minecraft:gold_ingot>,<minecraft:gold_ingot>],7000);

//bifrostperm
RuneAltar.addRecipe(<botania:bifrostperm>,
    [<minecraft:stained_glass>,<minecraft:stained_glass:1>,<minecraft:stained_glass:2>,
     <minecraft:stained_glass:3>,<minecraft:stained_glass:4>,<minecraft:stained_glass:5>,
     <minecraft:stained_glass:6>,<minecraft:stained_glass:7>,<minecraft:stained_glass:8>,
     <minecraft:stained_glass:9>,<minecraft:stained_glass:10>,<minecraft:stained_glass:11>,
     <minecraft:stained_glass:12>,<minecraft:stained_glass:13>,<minecraft:stained_glass:14>,
     <minecraft:stained_glass:15>],200000);

//rune_7
RuneAltar.removeRecipe(<botania:rune:7>);
RuneAltar.addRecipe(<botania:rune:7>,[<botania:rune>,<botania:rune:2>,<minecraft:snow>,<minecraft:snow>,<minecraft:ice>,<minecraft:wool:*>],8000);

//rune_8
RuneAltar.removeRecipe(<botania:rune:8>);
RuneAltar.addRecipe(<botania:rune:8>*2,[<botania:rune>,<botania:rune:1>,<botania:rune:2>,<botania:rune:3>,<botania:manaresource:23>,<botania:storage>],8000);

//cellblock
RuneAltar.addRecipe(<botania:cellblock>*2,
    [<minecraft:pumpkin>,<minecraft:cactus>,<botania:rune:2>,<botania:rune:4>,<minecraft:golden_apple>,
     <minecraft:wheat>,<minecraft:carrot>,<minecraft:potato>,<minecraft:melon>,<minecraft:poisonous_potato>,
     <minecraft:rotten_flesh>,<minecraft:spider_eye>],10000);

//rainbow_rune
//合成并消耗材料中的符文
val rrune as IIngredient[] = 
[
    <botania:storage:1>,<botania:storage:2>,<botania:bifrostperm>,
    <botania:bifrostperm>,<botania:bifrostperm>,<botania:rune:4>,
    <botania:rune:5>,<botania:rune:6>,<botania:rune:7>,
    <botania:rune:8>,<botania:manaresource:14>,
    <contenttweaker:shinystar_ingot>,<botania:manaresource:23>,
    <botania:blacklotus:1>,<minecraft:nether_star>
];
RuneAltar.addRecipe(<contenttweaker:rainbow_rune>,rrune,3000000);

//rainbow_gem
RuneAltar.addRecipe(<contenttweaker:rainbow_gem>,
    [<contenttweaker:tp_gem>,<contenttweaker:rainbow_rune>,<botania:bifrostperm>,
     <botania:bifrostperm>,<botania:bifrostperm>,<botania:bifrostperm>,
     <botania:bifrostperm>,<botania:bifrostperm>,<botania:bifrostperm>,
     <botania:bifrostperm>,<botania:bifrostperm>],3000000);

//mana_altar - blueprint
RuneAltar.addRecipe(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mana_altar"}),[<minecraft:paper>,<botania:manaresource>,<botania:manaresource:1>,<botania:manaresource:2>],8000);

//skeleton_skull
RuneAltar.addRecipe(<minecraft:skull>,[<minecraft:clay_ball>,<minecraft:clay_ball>,<minecraft:iron_ingot>,<minecraft:bone>,<minecraft:bow>,<minecraft:arrow>],10000);

//wither_skeleton_skull
RuneAltar.addRecipe(<minecraft:skull:1>,[<botania:rune:1>,<minecraft:skull>,<minecraft:coal>,<minecraft:coal>,<minecraft:quartz>,<minecraft:quartz>],12000);