/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

val remove as IItemStack[] = 
[
    <thermalexpansion:augment:257>, <thermalexpansion:augment:273>,
    <thermalexpansion:augment:304>, <thermalexpansion:augment:337>,
    <thermalexpansion:augment:512>, <thermalexpansion:augment:513>,
    <thermalexpansion:augment:514>, <thermalexpansion:augment:515>,
    <thermalexpansion:augment:576>, <thermalexpansion:augment:640>,
    <thermalexpansion:augment:656>, <thermalexpansion:augment:672>,
    <thermalexpansion:augment:673>, <thermalexpansion:augment:674>,
    <thermalexpansion:augment:688>, <thermalexpansion:augment:704>,
    <thermalexpansion:dynamo:*>
];

for Remove in remove {
    recipes.remove(Remove);
}