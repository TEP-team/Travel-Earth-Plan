/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;

val machine as string = "laser";
val components as IItemStack[][IItemStack] = {
    <minecraft:redstone> : [<appliedenergistics2:material:35>, <appliedenergistics2:material:36>, <appliedenergistics2:material:37>, <appliedenergistics2:material:38>, <extracells:storage.component:0>, <extracells:storage.component:1>, <extracells:storage.component:2>, <extracells:storage.component:3>],
    <minecraft:dye:4> : [<appliedenergistics2:material:54>, <appliedenergistics2:material:55>, <appliedenergistics2:material:56>, <appliedenergistics2:material:57>, <extracells:storage.component:8>, <extracells:storage.component:9>, <extracells:storage.component:10>],
    <minecraft:glowstone_dust> : [<extracells:storage.component:11>, <extracells:storage.component:12>, <extracells:storage.component:13>, <extracells:storage.component:14>, <extracells:storage.component:15>, <extracells:storage.component:16>, <extracells:storage.component:17>]
};

for material, components in components {
    for i, component in components {
        recipes.remove(component);
        if (i != 0) {
            if (i <= 3) {
                ModularUtils.itemRecipeBuilder(machine ~ "_basic_" ~ material.name ~ i, machine, 200, 40, [components[i - 1]*3, material*4, <appliedenergistics2:material:10>*4, <appliedenergistics2:material:23>, <appliedenergistics2:quartz_glass>, <contenttweaker:conversion_core>], [component], true, true).build();
            } else {
                ModularUtils.itemRecipeBuilder(machine ~ "_advanced_" ~ material.name ~ i, machine, 200, 60, [components[i - 1]*3, material*4, <appliedenergistics2:material:10>*4, <appliedenergistics2:material:22>, <appliedenergistics2:material:24>, <contenttweaker:conversion_core>], [component], true, true).build();
            }
        } else {
            ModularUtils.itemRecipeBuilder(machine ~ "_simplest_" ~ material.name ~ i, machine, 200, 25, [material*4, <appliedenergistics2:material:10>*4, <appliedenergistics2:material:22>, <contenttweaker:conversion_core>], [component], true, true).build();
        }
    }
}