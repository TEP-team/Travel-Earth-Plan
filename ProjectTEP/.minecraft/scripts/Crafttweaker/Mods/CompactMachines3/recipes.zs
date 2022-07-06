/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000

RecipeUtils.recipeShaped(<compactmachines3:fieldprojector>,
    [[null, <ore:blockGlass>, null], 
     [null, <contenttweaker:conversion_core>, null], 
     [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]],  true);

RecipeUtils.recipeShaped(<compactmachines3:psd>,
    [[<ore:ingotIron>, <ore:blockGlass>, <ore:ingotIron>], 
     [<ore:gemLapis>, <contenttweaker:tp_gem>, <ore:dustRedstone>], 
     [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]],  true);