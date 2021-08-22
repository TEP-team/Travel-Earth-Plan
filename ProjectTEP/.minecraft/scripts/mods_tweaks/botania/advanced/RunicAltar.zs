/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 39000
import crafttweaker.item.IIngredient;
import mods.botania.RuneAltar;

RuneAltar.removeRecipe(<minecraft:skull:3>);

RuneAltar.removeRecipe(<botania:rune:7>);
RuneAltar.addRecipe(<botania:rune:7>,[<botania:rune>,<botania:rune:2>,<minecraft:snow>,<minecraft:snow>,<minecraft:ice>,<minecraft:wool:*>],8000);

RuneAltar.removeRecipe(<botania:rune:8>);
RuneAltar.addRecipe(<botania:rune:8>*2,[<botania:rune>,<botania:rune:1>,<botania:rune:2>,<botania:rune:3>,<botania:manaresource:23>,<botania:storage>],8000);

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