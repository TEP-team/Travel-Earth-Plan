/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.mekanism.crusher;

val remove as IItemStack[] = [
    <mekanism:biofuel>, <minecraft:string>,
    <mekanism:dust:*>, <mekanism:dirtydust:*>,
    <thermalfoundation:material:68>, <thermalfoundation:material:69>,
    <thermalfoundation:material:70>, <mekanism:otherdust:1>
];

for Remove in remove {
    crusher.removeRecipe(Remove);
}

/* using global variables (ingot, dust, dirtydust, ore) */
for i, dust in dust {
    crusher.addRecipe(ingot[i], dust);
    crusher.addRecipe(ore[i], dirtydust[i]*2);
}

crusher.addRecipe(<contenttweaker:ingot_is>, <contenttweaker:tin_solder_dust>);