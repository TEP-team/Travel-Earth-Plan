/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.modularmachinery.RecipePrimer;
import scripts.Classes.ModularUtils.ModularUtils;

val ModularUtils as ModularUtils = ModularUtils("Instanced");
val machine as string = "mixin_tank";

var recipe0 = ModularUtils.fluidRecipeBuilder(machine + 0, machine, 40, 50, [<liquid:sulfuricacid>*10], [<liquid:fluoride>*10], true, true) as RecipePrimer;
    recipe0.addItemInput(<minecraft:glowstone_dust>);
    recipe0.build();