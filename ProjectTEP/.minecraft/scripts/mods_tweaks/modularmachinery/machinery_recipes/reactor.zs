/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/
#norun
#priority 39000
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

//shinystar_matter and generate power - 1
RecipeBuilder.newBuilder("reactor_0", "reactor",20).
addFluidInput(<liquid:deuterium>*1).
addEnergyPerTickOutput(5000).
addItemOutput(<contenttweaker:shinystar_matter>).setChance(0.01).
addItemOutput(<contenttweaker:material_part:94>).setChance(0.2).
build();

//shinystar_matter and generate power - 2
RecipeBuilder.newBuilder("reactor_1", "reactor",5000).
addItemInput(<contenttweaker:cell_dt>).
addEnergyPerTickOutput(5000).
addItemOutput(<contenttweaker:shinystar_matter>).setChance(0.03).
addItemOutput(<contenttweaker:material_part:94>*8).
addItemOutput(<contenttweaker:cell_empty>).
build();

//shinystar_ingot generate power
RecipeBuilder.newBuilder("reactor_2", "reactor",20000).
addItemInput(<contenttweaker:shinystar_ingot>).
addEnergyPerTickOutput(5000).
addItemOutput(<minecraft:nether_star>).setChance(0.05).
build();