/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 39000
import crafttweaker.item.IItemStack;
import mods.mekanism.infuser;

val remove as IItemStack[] = 
[
    <minecraft:dirt>,<minecraft:dirt:2>,<minecraft:mycelium>,
    <minecraft:mossy_cobblestone>,<minecraft:stonebrick:1>,
    <mekanismgenerators:hohlraum>,<mekanism:controlcircuit>
];
for Remove in remove {
    infuser.removeRecipe(Remove);
}