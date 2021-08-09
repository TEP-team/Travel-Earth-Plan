/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#priority 32749

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val Plates as IOreDictEntry = <ore:Plates>;
val IumPlates as IItemStack[] = 
[
    <contenttweaker:material_part:15>,<contenttweaker:material_part:31>,
    <contenttweaker:material_part:47>,<contenttweaker:material_part:63>,
    <contenttweaker:material_part:79>,<contenttweaker:material_part:98>,
    <contenttweaker:material_part:117>,<contenttweaker:material_part:136>,
    <contenttweaker:material_part:159>
];
Plates.add(IumPlates); //All of the CoT meterials [Plates]