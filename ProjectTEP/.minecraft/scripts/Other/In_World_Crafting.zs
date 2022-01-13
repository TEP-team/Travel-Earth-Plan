/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/
#norun
#priority 80000
import crafttweaker.item.IItemStack;
import mods.inworldcrafting.FluidToItem;

//FluidToItem
FluidToItem.transform(<contenttweaker:paper_ee>*8,<liquid:electrolyte>,[<contenttweaker:papers>],true);

//dusts
for i, Dusts in dusts {
    FluidToItem.transform(Dusts,<liquid:water>,[dirtydusts[i]],false);
}

for i, DustsInt in dustInt {
    val basedusts = materials.makeStack(DustsInt);
	val basedirtydusts = materials.makeStack(dirtydustInt[i]);
    FluidToItem.transform(basedusts,<liquid:water>,[basedirtydusts],false);
}