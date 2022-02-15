/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.modularmachinery.RecipePrimer;

val machine as string = "gas_centrifuger";

var recipe0 = ModularUtils.fluidRecipeBuilder(machine + 0, machine, 5, 150, [<liquid:fluoride>*5, <liquid:electrolyte>], [<liquid:deuterium>], true, true) as RecipePrimer;
    recipe0.addItemInput(<contenttweaker:material_part:77>);
    recipe0.build();