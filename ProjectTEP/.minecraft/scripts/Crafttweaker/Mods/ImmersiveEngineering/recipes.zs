/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

val hammer1 = <contenttweaker:hammer_plate>.anyDamage().transformDamage();
val hammer2 = <immersiveengineering:tool:0>.anyDamage().transformDamage();

RecipeUtils.recipeAround(<immersiveengineering:metal_decoration0>, <immersiveengineering:wirecoil>, <ore:ingotSteel>, true);
RecipeUtils.recipeAround(<immersiveengineering:metal_decoration0:1>, <immersiveengineering:wirecoil:1>, <ore:ingotSteel>, true);
RecipeUtils.recipeAround(<immersiveengineering:metal_decoration0:2>, <immersiveengineering:wirecoil:2>, <ore:ingotSteel>, true);

val remove as IItemStack[] = [<immersiveengineering:material:8>, <immersiveengineering:material:9>];
for Remove in remove {
    recipes.remove(Remove);
}

val toolRecipe = recipes.getRecipesFor(<immersiveengineering:tool>);
for toolRecipe in toolRecipe {
    recipes.remove(toolRecipe.output);
}

RecipeUtils.recipeShapeless(<immersiveengineering:metal:40>,
	[<minecraft:gold_ingot>, hammer1 | hammer2], true);

/* using global variables (otheringot, otherplate) */
for i, otherplate in otherplate {
    RecipeUtils.recipeShapeless(otherplate,
	    [otheringot[i], hammer1 | hammer2], true);
}