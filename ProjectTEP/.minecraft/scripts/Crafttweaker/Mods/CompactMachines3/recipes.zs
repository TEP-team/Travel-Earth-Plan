/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000

val iron = <ore:ingotIron>;

recipes.remove(<compactmachines3:fieldprojector>);
recipes.addShaped(<compactmachines3:fieldprojector>,
    [[null,<ore:blockGlass>,null],
     [null,<contenttweaker:conversion_core>,null],
     [iron,iron,iron]]);

recipes.addShaped(<compactmachines3:fieldprojector>,
    [[iron,<ore:blockGlass>,iron],
     [<ore:gemLapis>,<contenttweaker:tp_gem>,<ore:dustRedstone>],
     [iron,iron,iron]]);