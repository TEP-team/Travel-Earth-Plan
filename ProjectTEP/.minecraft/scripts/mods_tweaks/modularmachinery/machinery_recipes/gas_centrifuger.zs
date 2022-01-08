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

//liquid - deuterium
RecipeBuilder.newBuilder("gas_0", "gas_centrifuger", 5).
addItemInput(<contenttweaker:material_part:77>).
addFluidInput(<liquid:fluoride>*5).
addFluidInput(<liquid:electrolyte>*1).
addEnergyPerTickInput(150).
addFluidOutput(<liquid:deuterium>*1).
build();
