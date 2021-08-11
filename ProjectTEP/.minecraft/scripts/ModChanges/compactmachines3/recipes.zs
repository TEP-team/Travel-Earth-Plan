/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#priority 29000

import crafttweaker.item.IItemStack;

var rs as IItemStack = <ore:dustRedstone>;
var iron as IItemStack = <ore:ingotIron>;

recipes.remove(<compactmachines3:psd>);
recipes.addShaped(<compactmachines3:psd>,
    [[iron,<ore:paneGlass>,iron],
	 [rs,<contenttweaker:tp_gem>,rs],
	 [iron,iron,iron]]);

recipes.remove(<compactmachines3:fieldprojector>);
recipes.addShaped(<compactmachines3:fieldprojector>,
    [[null,<ore:blockGlass>,null],
     [null,<contenttweaker:conversion_core>,null],
     [iron,iron,iron]]);