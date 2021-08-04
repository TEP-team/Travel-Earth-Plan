#priority 32580

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var paper = <minecraft:paper>;
var drs = <ore:dustRedstone>;
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:scripter"}),
    [[drs,drs,drs],
	 [drs,paper,drs],
	 [drs,drs,drs]]);