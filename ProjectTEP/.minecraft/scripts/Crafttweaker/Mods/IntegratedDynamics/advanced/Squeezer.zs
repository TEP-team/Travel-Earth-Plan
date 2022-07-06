/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.integrateddynamics.Squeezer;
import mods.integrateddynamics.MechanicalSqueezer;

val dusts as IItemStack[] = [
    <contenttweaker:material_part:2>, <contenttweaker:material_part:13>,
    <contenttweaker:material_part:35>, <contenttweaker:material_part:46>,
    <contenttweaker:material_part:68>, <contenttweaker:material_part:79>,
    <contenttweaker:material_part:90>, <mekanism:dust:1>,
];

for dust in dusts {
    Squeezer.removeRecipesWithOutput(dust, 1.0, dust, 0.75, null);
    MechanicalSqueezer.removeRecipesWithOutput(dust*2, 1.0, dust, 0.5, null);
}