/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 39000
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

RecipeBuilder.newBuilder("mana_altar:1","mana_altar",10).
addItemInput(<minecraft:snowball>).
addManaOutput(50).
build();

RecipeBuilder.newBuilder("mana_altar:2","mana_altar",200).
addItemInput(<ore:plankWood>).
addManaInput(1000).
addItemOutput(<botania:livingwood>).
build();

RecipeBuilder.newBuilder("mana_altar:3","mana_altar",200).
addItemInput(<ore:cobblestone>).
addManaOutput(1000).
addItemOutput(<botania:livingrock>).
build();