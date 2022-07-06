/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.immersiveengineering.ArcFurnace;

val remove as IItemStack[] = [
    <thermalfoundation:material:129>, <thermalfoundation:material:134>
];

for Remove in remove {
    ArcFurnace.removeRecipe(Remove);
}

ArcFurnace.addRecipe(<contenttweaker:material_part:11>, <contenttweaker:material_part:13>, null, 100, 512);
ArcFurnace.addRecipe(<contenttweaker:material_part:11>*2, <contenttweaker:sub_block_holder_0:3>, <immersiveengineering:material:7>, 200, 512);

ArcFurnace.addRecipe(<mekanism:ingot:6>, <contenttweaker:material_part:35>, null, 100, 512);
ArcFurnace.addRecipe(<mekanism:ingot:6>*2, <mekanism:oreblock:2>, <immersiveengineering:material:7>, 200, 512);

/* using global variables (dirtydust, ingot) */
for i, ingot in ingot {
    ArcFurnace.addRecipe(ingot, dirtydust[i], <immersiveengineering:material:7>, 100, 512);
}