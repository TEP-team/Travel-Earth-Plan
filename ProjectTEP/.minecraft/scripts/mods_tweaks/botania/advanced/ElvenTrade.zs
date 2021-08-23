/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 39000
import crafttweaker.item.IIngredient;
import mods.botania.ElvenTrade;

val pcbblueprint as IIngredient[] = 
[
    <contenttweaker:blueprint_empty>,
    <mekanism:controlcircuit:2>,
    <environmentaltech:pladium_crystal>*9
];
ElvenTrade.addRecipe([<pneumaticcraft:pcb_blueprint>],pcbblueprint);