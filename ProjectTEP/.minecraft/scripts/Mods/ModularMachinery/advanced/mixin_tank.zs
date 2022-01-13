/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

//custom_function
function mixintankBuilder(name as string, tick as int, perenergy as int, input1 as IItemStack, input2 as ILiquidStack, output as ILiquidStack) {
    RecipeBuilder.newBuilder(name, "mixin_tank", tick).
    addEnergyPerTickInput(perenergy).
    addItemInput(input1).
    addFluidInput(input2).
    addFluidOutput(output).
    build();
}

//liquid - fluoride
mixintankBuilder("tank_0", 40, 50, <minecraft:glowstone_dust>, <liquid:sulfuricacid>*10, <liquid:fluoride>*10);