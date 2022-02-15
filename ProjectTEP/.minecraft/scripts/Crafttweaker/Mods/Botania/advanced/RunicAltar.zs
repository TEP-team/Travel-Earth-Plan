/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.botania.RuneAltar;

val inputs0 as IIngredient[] = [
    <minecraft:stained_glass>,<minecraft:stained_glass:1>,<minecraft:stained_glass:2>,
    <minecraft:stained_glass:3>,<minecraft:stained_glass:4>,<minecraft:stained_glass:5>,
    <minecraft:stained_glass:6>,<minecraft:stained_glass:7>,<minecraft:stained_glass:8>,
    <minecraft:stained_glass:9>,<minecraft:stained_glass:10>,<minecraft:stained_glass:11>,
    <minecraft:stained_glass:12>,<minecraft:stained_glass:13>,<minecraft:stained_glass:14>,
    <minecraft:stained_glass:15>
];

val inputs1 as IIngredient[] = [
    <botania:storage:1>,<botania:storage:2>,<botania:bifrostperm>,
    <botania:bifrostperm>,<botania:bifrostperm>,<botania:rune:4>,
    <botania:rune:5>,<botania:rune:6>,<botania:rune:7>,
    <botania:rune:8>,<botania:manaresource:14>,
    <contenttweaker:shinystar_ingot>,<botania:manaresource:23>,
    <botania:blacklotus:1>,<minecraft:nether_star>
];

RuneAltar.addRecipe(<botania:bifrostperm>, inputs0, 200000);
RuneAltar.addRecipe(<contenttweaker:rainbow_rune>, inputs1, 3000000);
RuneAltar.addRecipe(<botania:pylon>, [<botania:storage>, <minecraft:gold_ingot>, <minecraft:gold_ingot>], 7000);
RuneAltar.addRecipe(<botania:rune:7>, [<botania:rune>, <botania:rune:2>, <minecraft:snow>, <minecraft:snow>, <minecraft:ice>, <minecraft:wool:*>], 8000);
RuneAltar.addRecipe(<botania:rune:8>*2, [<botania:rune>, <botania:rune:1>, <botania:rune:2>, <botania:rune:3>, <botania:manaresource:23>, <botania:storage>], 8000);
RuneAltar.addRecipe(<contenttweaker:rainbow_gem>, [<contenttweaker:tp_gem>, <contenttweaker:rainbow_rune>, <botania:bifrostperm>*9], 3000000);
RuneAltar.addRecipe(<minecraft:skull>, [<minecraft:clay_ball>*2, <minecraft:iron_ingot>, <minecraft:bone>, <minecraft:bow>, <minecraft:arrow>], 10000);
RuneAltar.addRecipe(<minecraft:skull:1>, [<botania:rune:15>, <minecraft:skull>, <minecraft:coal>*2, <minecraft:quartz>*2], 12000);
RuneAltar.addRecipe(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mana_convertor"}), [<botania:manaresource:4>*4, <mekanism:reinforcedalloy>*4, <botania:rune:11>, <contenttweaker:papers>], 8000);

val removes as IItemStack[] = [
    <minecraft:skull:3>, <botania:rune:7>, <botania:rune:8>
];

for remove in removes {
    RuneAltar.removeRecipe(remove);
}