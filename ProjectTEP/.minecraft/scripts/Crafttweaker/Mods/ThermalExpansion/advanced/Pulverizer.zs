/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Pulverizer;

val second as IItemStack[] = [
    <contenttweaker:material_part:36>, <contenttweaker:material_part:58>, <thermalfoundation:material:768>,
    null, null, <contenttweaker:material_part:80>, null, <contenttweaker:material_part:69>, null,
    <immersiveengineering:material:25>, <appliedenergistics2:material:2>
];

/* using global variables (dirtydust, ore, dust, ingot) */
for i, dirtydust in dirtydust {
    Pulverizer.removeRecipe(ore[i]);
    Pulverizer.addRecipe(dirtydust*2, ore[i], 6000, second[i], 0.01);
    Pulverizer.addRecipe(dust[i], ingot[i], 3600);
}

Pulverizer.addRecipe(<contenttweaker:tin_solder_dust>, <contenttweaker:ingot_is>, 3600);