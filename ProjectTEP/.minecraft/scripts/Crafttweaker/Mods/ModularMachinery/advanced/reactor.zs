/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.modularmachinery.RecipePrimer;

val machine as string = "reactor";

var recipe0 = ModularUtils.emptyRecipeBuilder(machine ~ "_0", machine, 20) as RecipePrimer;
    recipe0.addEnergyPerTickOutput(25000);
    recipe0.addFluidInput(<liquid:liquidfusionfuel>*10);
    recipe0.addItemOutput(<contenttweaker:shinystar_matter>).setChance(0.1);
    recipe0.build();