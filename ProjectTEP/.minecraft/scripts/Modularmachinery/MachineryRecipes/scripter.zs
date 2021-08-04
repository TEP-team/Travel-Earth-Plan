#priority 32579

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

var paper as IItemStack = <minecraft:paper>;

RecipeBuilder.newBuilder("scripter:1","scripter",600).
addItemInput(paper).
    addItemInput(<botania:manaresource:2>).
        addEnergyPerTickInput(5).
            addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mana_altar"})).
                addItemOutput(<contenttweaker:error_code>).setChance(0.05).
build();