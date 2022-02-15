/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.mekanism.infuser;
import mods.mekatweaker.InfuserType;

InfuserType.addTypeObject(<minecraft:dye:15>, "BONEMEAL", 10);

val remove as IItemStack[] = 
[
    <minecraft:dirt>, <minecraft:dirt:2>, <minecraft:mycelium>,
    <minecraft:mossy_cobblestone>, <minecraft:stonebrick:1>,
    <mekanismgenerators:hohlraum>, <mekanism:controlcircuit>,
    <mekanism:enrichedalloy>, <mekanism:enrichediron>,
    <mekanism:otherdust:1>
];

for Remove in remove {
    infuser.removeRecipe(Remove);
}

infuser.addRecipe("BONEMEAL", 10, <ore:flowers>, <botania:specialflower>.withTag({type: "puredaisy"}));
infuser.addRecipe("REDSTONE", 10, <ore:ingotSteel>, <mekanism:enrichedalloy>);