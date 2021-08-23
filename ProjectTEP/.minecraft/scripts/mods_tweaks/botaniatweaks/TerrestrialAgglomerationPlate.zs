/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 39000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.botaniatweaks.AgglomerationRecipe;
import mods.botaniatweaks.AgglomerationMultiblock;

//remove all recipes of "Terrestrial Agglomeration Plate"
mods.botaniatweaks.Agglomeration.removeDefaultRecipe();

val terre_steel = <botania:manaresource:4>;
val tsinputs as IIngredient[] = 
[
    <botania:rune:2>,<botania:manaresource>,
    <botania:manaresource:1>,<botania:manaresource:2>,
    <environmentaltech:lonsdaleite_crystal>
];

//Terresteel Ingot
val terreSteelBlocks as AgglomerationMultiblock = AgglomerationMultiblock.create();
terreSteelBlocks.center(<botania:storage>);
terreSteelBlocks.centerReplace(<minecraft:iron_block>);

val terreSteel as AgglomerationRecipe = AgglomerationRecipe.create();
terreSteel.output(terre_steel*2);
terreSteel.inputs(tsinputs);
terreSteel.manaCost(400000);
terreSteel.multiblock(terreSteelBlocks);

//Gaia Spirit Ingot
val gsiBlocks as AgglomerationMultiblock = AgglomerationMultiblock.create();
gsiBlocks.center(<botania:storage:1>);
gsiBlocks.edge(<botania:livingrock>);
gsiBlocks.corner(<botania:storage:2>);

val gsi as AgglomerationRecipe = AgglomerationRecipe.create();
gsi.output(<botania:manaresource:14>);
gsi.inputs([terre_steel,<botania:manaresource:5>*4,<botania:rune:8>]);
gsi.manaCost(30000);
gsi.color1(0xdb00de);
gsi.color2(0x00FF00);
gsi.multiblock(gsiBlocks);