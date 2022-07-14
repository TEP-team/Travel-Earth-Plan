/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000

//seeds
vanilla.seeds.removeSeed(<immersiveengineering:seed>);
vanilla.seeds.removeSeed(<car:canola_seeds>);

vanilla.seeds.addSeed(<minecraft:wheat_seeds>, 4);
vanilla.seeds.addSeed(<minecraft:melon_seeds>, 2);
vanilla.seeds.addSeed(<minecraft:pumpkin_seeds>, 2);
vanilla.seeds.addSeed(<minecraft:beetroot_seeds>, 2);

//entity
<entity:minecraft:enderman>.addDrop(<contenttweaker:exe>.weight(0.25));