/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

val remove as IItemStack[] = [
    <integrateddynamics:coal_generator>
];

for Remove in remove {
    recipes.remove(Remove);
}