/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.inworldcrafting.FluidToItem;

val Items as IItemStack[][] = BasicUtils.getAllMaterialPartItem();
val dirtyDust as IItemStack[] = Items[3] + <mekanism:dirtydust:1> + <mekanism:dirtydust:2>;
val dust as IItemStack[] = Items[2] + <mekanism:dust:1> + <mekanism:dust:2>;

for i, dusts in dust {
    FluidToItem.transform(dusts, <liquid:water>, [dirtyDust[i]], false);
}

FluidToItem.transform(<contenttweaker:paper_ee>*8, <liquid:electrolyte>, [<contenttweaker:papers>], true);