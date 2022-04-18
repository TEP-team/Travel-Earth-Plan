/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 80000

//seeds
vanilla.seeds.removeSeed(<minecraft:wheat_seeds>);
vanilla.seeds.removeSeed(<immersiveengineering:seed>);

//entity
<entity:minecraft:enderman>.addDrop(<contenttweaker:exe>.weight(0.25));