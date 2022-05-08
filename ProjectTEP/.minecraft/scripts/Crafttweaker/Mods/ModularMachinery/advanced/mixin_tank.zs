/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipePrimer;

val machine as string = "mixin_tank";

var recipe0 = ModularUtils.fluidRecipeBuilder(machine ~ "_0", machine, 600, 0, [<liquid:sulfuricacid>*500], [<liquid:fluoride>*500], true, true) as RecipePrimer;
    recipe0.addItemInput(<minecraft:glowstone_dust>);
    recipe0.build();

/* using global variables (dirtydust, dust) */
for i, dust in dust {
    ModularUtils.itemRecipeBuilder(machine ~ "_1_" ~ i, machine, 40, 0, [dirtydust[i]], [dust], true, true).addFluidInput(<liquid:water>*400).build();
}