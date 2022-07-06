/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.inworldcrafting.FluidToItem;

/* using global variables (dust, dirtydust) */
for i, dust in dust {
    FluidToItem.transform(dust, <liquid:water>, [dirtydust[i]], false);
}

FluidToItem.transform(<contenttweaker:paper_ee>*8, <liquid:electrolyte>, [<contenttweaker:papers>], true);