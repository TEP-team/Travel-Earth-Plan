/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#priority 32749

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

//Minecraft coals
val coals as IOreDictEntry = <ore:coals>;
coals.add(<minecraft:coal>,<minecraft:coal:1>);

val etll as IOreDictEntry = <ore:etLaserLens>;
etll.remove(<environmentaltech:laser_lens_crystal>);