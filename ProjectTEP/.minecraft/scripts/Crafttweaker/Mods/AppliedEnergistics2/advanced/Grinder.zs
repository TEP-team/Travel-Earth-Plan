/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.appliedenergistics2.Grinder;

/* using global variables (dirtydust, ore, dust, ingot) */
for i, dirtydust in dirtydust {
    Grinder.addRecipe(dirtydust, ore[i], 8, dirtydust, 0.05);
    Grinder.addRecipe(dust[i], ingot[i], 4);
}

Grinder.addRecipe(<contenttweaker:tin_solder_dust>, <contenttweaker:ingot_is>, 4);