/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.immersiveengineering.Crusher;

val remove as IItemStack[] = [
    <immersiveengineering:metal:18>, <immersiveengineering:metal:9>,
    <immersiveengineering:metal:19>, <immersiveengineering:metal:11>,
    <immersiveengineering:metal:12>, <immersiveengineering:metal:13>,
    <thermalfoundation:material:65>, <thermalfoundation:material:70>,
    <contenttweaker:material_part:24>, <mekanism:otherdust:4>,
    <mekanism:dust:2>
];

for Remove in remove {
    Crusher.removeRecipe(Remove);
}

val byproduct as IItemStack[] = [
    <contenttweaker:material_part:36>, <contenttweaker:material_part:58>, <thermalfoundation:material:768>,
    null, null, <contenttweaker:material_part:80>, null, <contenttweaker:material_part:69>, null,
    <immersiveengineering:material:25>, <appliedenergistics2:material:2>
];

/* using global variables (dirtydust, ore, dust, ingot) */
for i, dirtydust in dirtydust {
    Crusher.addRecipe(dirtydust*2, ore[i], 6000, byproduct[i], 0.1);
    Crusher.addRecipe(dust[i], ingot[i], 3600);
}

Crusher.addRecipe(<contenttweaker:tin_solder_dust>, <contenttweaker:ingot_is>, 3600);