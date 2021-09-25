/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 39000
import crafttweaker.item.IIngredient;
import mods.botaniatweaks.Agglomeration;

val terra_steel = <botania:manaresource:4>;
val tsinputs as IIngredient[] = 
[
    <botania:rune:2>,<botania:manaresource>,<botania:manaresource:1>,
    <botania:manaresource:2>,<environmentaltech:lonsdaleite_crystal>
];

//remove all recipes of "Terrestrial Agglomeration Plate"
Agglomeration.removeDefaultRecipe();

//Terrasteel Ingot
Agglomeration.addRecipe(
    terra_steel*2,tsinputs,400000,0x0000FF,0x00FF00,
    <botania:storage>,<botania:livingrock>,<minecraft:lapis_block>,<minecraft:iron_block>,null,null
);

//Gaia Spirit Ingot
Agglomeration.addRecipe(
    <botania:manaresource:14>,[terra_steel,<botania:manaresource:5>*4,<botania:rune:8>],100000,0xdb00de,0xe400e8,
    <botania:storage:1>,<botania:livingrock>,<botania:storage:2>
);
