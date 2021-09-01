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

RecipeBuilder.newBuilder("energy_0", "energy_dismantler", 2400).
addItemInput(<contenttweaker:shinystar_matter>).
addEnergyPerTickInput(500).
addItemOutput(<contenttweaker:shinystar_ingot>).
build();