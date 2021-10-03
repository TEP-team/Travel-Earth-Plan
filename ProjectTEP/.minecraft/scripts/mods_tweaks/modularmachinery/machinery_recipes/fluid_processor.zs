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

//liquid - electrolyte
RecipeBuilder.newBuilder("fluid_0", "fluid_processor",40).
addItemInput(<mekanism:dust:4>).
addFluidInput(<liquid:liquidlithium>*10).
addFluidInput(<liquid:sulfuricacid>*10).
addEnergyPerTickInput(100).
addFluidOutput(<liquid:electrolyte>*10).
build();

//cell_empty to cell_electrolyte
RecipeBuilder.newBuilder("fluid_1", "fluid_processor", 20).
addEnergyPerTickInput(250).
addItemInput(<contenttweaker:cell_empty>).
addFluidInput(<liquid:electrolyte>*250).
addItemOutput(<contenttweaker:cell_electrolyte>).
build();

//cell_electrolyte to cell_empty
RecipeBuilder.newBuilder("fluid_2", "fluid_processor", 20).
addEnergyPerTickInput(250).
addItemInput(<contenttweaker:cell_electrolyte>).
addFluidOutput(<liquid:electrolyte>*250).
addItemOutput(<contenttweaker:cell_empty>).
build();

//cell_empty to cell_dt
RecipeBuilder.newBuilder("fluid_3", "fluid_processor", 20).
addEnergyPerTickInput(250).
addItemInput(<contenttweaker:cell_empty>).
addFluidInput(<liquid:deuterium>*250).
addItemOutput(<contenttweaker:cell_dt>).
build();

//cell_dt to cell_empty
RecipeBuilder.newBuilder("fluid_4", "fluid_processor", 200).
addEnergyPerTickInput(250).
addItemInput(<contenttweaker:cell_dt>).
addFluidOutput(<liquid:deuterium>*250).
addItemOutput(<contenttweaker:cell_empty>).
build();