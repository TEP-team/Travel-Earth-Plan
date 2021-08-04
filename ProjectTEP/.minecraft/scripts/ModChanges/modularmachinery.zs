#priority 99

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

var rs as IItemStack = <ore:dustRedstone>;
var iron as IItemStack = <ore:ingotIron>;
var ium as IItemStack = <modularmachinery:itemmodularium>;
var casing as IItemStack = <modularmachinery:blockcasing>;
var casing4 as IItemStack = <modularmachinery:blockcasing:4>;

recipes.remove(ium);
recipes.addShapeless(ium,
    [iron,rs]);

recipes.remove(casing);
recipes.addShaped(casing*6,
    [[ium,ium,ium],
     [ium,null,ium],
     [ium,ium,ium]]);

