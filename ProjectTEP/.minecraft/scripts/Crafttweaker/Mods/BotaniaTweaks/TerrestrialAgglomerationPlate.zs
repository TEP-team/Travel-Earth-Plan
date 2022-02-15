/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IIngredient;
import mods.botaniatweaks.Agglomeration;

Agglomeration.removeDefaultRecipe();

Agglomeration.addRecipe(
    <botania:manaresource:4>*2,[<botania:rune:2>,<botania:manaresource>,<botania:manaresource:1>,<botania:manaresource:2>,<environmentaltech:lonsdaleite_crystal>],400000,0x0000FF,0x00FF00,
    <botania:storage>,<botania:livingrock>,<minecraft:lapis_block>);

Agglomeration.addRecipe(
    <botania:manaresource:14>,[<botania:manaresource:4>,<botania:manaresource:5>*4,<botania:rune:8>],100000,0xdb00de,0xe400e8,
    <botania:storage:1>,<botania:livingrock>,<botania:storage:2>);