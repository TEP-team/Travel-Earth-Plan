/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#priority 32750

import crafttweaker.item.IItemStack;

//maxDamage and recipe [flint_and_steel, lighter] 
var fas =  <minecraft:flint_and_steel>;
fas.maxDamage = 4;
recipes.remove(fas);
recipes.addShapeless(fas,
    [<minecraft:cobblestone>,<minecraft:flint>]);

var l3 = <variedcommodities:lighter>;
l3.maxDamage = 44;
recipes.addShaped(l3,
    [[null,<minecraft:coal>,null],
	 [<ore:ingotIron>,<ore:dustRedstone>,null],
	 [null,<ore:ingotIron>,null]]);