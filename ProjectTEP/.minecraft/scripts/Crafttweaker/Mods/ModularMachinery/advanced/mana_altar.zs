/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import scripts.Classes.ModularUtils.ModularUtils;

val ModularUtils as ModularUtils = ModularUtils("Instanced");
val machine as string = "mana_altar";

ModularUtils.emptyRecipeBuilder(machine + 0, machine, 10).
    addItemInput(<minecraft:snowball>).
    addFluidOutput(<liquid:water>).
    addManaOutput(50).
    build();

ModularUtils.itemRecipeBuilder(machine + 1, machine, 300, 10000,
    [<botania:pylon>, <botania:manaresource:4>],
    [<botania:pylon:1>], true, false).build();

ModularUtils.itemRecipeBuilder(machine + 2, machine, 400, 15000,
    [<botania:pylon:1>, <botania:manaresource:7>],
    [<botania:pylon:2>], true, false).build();