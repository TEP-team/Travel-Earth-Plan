/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.modularmachinery.RecipePrimer;

val machine as string = "fluid_processor";

var recipe0 = ModularUtils.fluidRecipeBuilder(machine ~ "_0", machine, 40, 100, [<liquid:liquidlithium>*10, <liquid:sulfuricacid>*10], [<liquid:electrolyte>*10], true, true) as RecipePrimer;
    recipe0.addItemInput(<mekanism:dust:4>);
    recipe0.build();