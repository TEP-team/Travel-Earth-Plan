/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Compactor;

val remove as IItemStack[]= [
    <thermalfoundation:material:128>, <thermalfoundation:material:129>,
    <thermalfoundation:material:130>, <thermalfoundation:material:131>,
    <thermalfoundation:material:132>, <thermalfoundation:material:133>,
    <thermalfoundation:material:134>, <thermalfoundation:material:160>,
    <thermalfoundation:material:161>, <thermalfoundation:material:164>
];

for Remove in remove {
    Compactor.removeStorageRecipe(Remove);
    Compactor.removeGearRecipe(Remove);
}