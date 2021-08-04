#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

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