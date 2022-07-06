/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.modularmachinery.RecipePrimer;

val machine as string = "mixin_tank";

/* using global variables (dirtydust, dust) */
for i, dust in dust {
    ModularUtils.itemRecipeBuilder(machine ~ "_1_" ~ i, machine, 40, 0, [dirtydust[i]], [dust], true, true).addFluidInput(<liquid:water>*400).build();
}