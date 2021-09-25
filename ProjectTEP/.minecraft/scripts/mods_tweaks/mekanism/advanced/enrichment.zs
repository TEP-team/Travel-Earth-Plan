/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 39000
import mods.mekanism.enrichment;

val oreInt_0 as int[] = [12,4,2,3,5,6];
val dustInt_0 as int[] = [77,111,145,162,179,196];
val oreInt_1 as int[] = [3,0];
val dustInt_1 as int[] = [213,128];

for r, DustInt_0 in dustInt_0 {
	val dusts = materials.makeStack(DustInt_0);
	val ores = blocks0def.makeStack(oreInt_0[r]);
	enrichment.addRecipe(ores,dusts*2);
}

for r, DustInt_1 in dustInt_1 {
	val dusts = materials.makeStack(DustInt_1);
	val ores = blocks1def.makeStack(oreInt_1[r]);
	enrichment.addRecipe(ores,dusts*2);
}

for r, DustInt in dustInt {
	val basedusts = materials.makeStack(DustInt);
	val basedirtydusts = materials.makeStack(dirtydustInt[r]);
	enrichment.addRecipe(basedirtydusts,basedusts);
}