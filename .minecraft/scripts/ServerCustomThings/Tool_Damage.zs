#priority 4

import crafttweaker.item.IItemStack;

//maxDamage and recipe [flint_and_steel, lighter] 
var fas =  <minecraft:flint_and_steel:5>;
fas.maxDamage = 4;
recipes.remove(fas);
recipes.addShapeless(fas,
    [<minecraft:cobblestone>,<minecraft:flint>]);

var l3 = <variedcommodities:lighter:31>;
l3.maxDamage = 44;
recipes.addShaped(l3,
    [[null,<minecraft:coal>,null],
	 [<ore:ingotIron>,<ore:dustRedstone>,null],
	 [null,<ore:ingotIron>,null]]);