/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.mekanism.chemical.crystallizer;

val remove as IItemStack[] = [
    <mekanism:crystal:*>, <mekanism:otherdust:4>
];

for Remove in remove {
    crystallizer.removeRecipe(Remove);
}

crystallizer.addRecipe(<gas:lithium>*100, <contenttweaker:material_part:57>);