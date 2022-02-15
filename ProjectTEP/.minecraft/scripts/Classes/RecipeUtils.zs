/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy  paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 100000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

zenClass RecipeUtils {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;

    function recipeRemove(output as IItemStack) {
        recipes.remove(output);
    }

    function recipeShaped(output as IItemStack, input as IIngredient[][], remove as bool) {
        if (remove) this.recipeRemove(output);
        recipes.addShaped(output, input);
    }

    function recipeShapeless(output as IItemStack, input as IIngredient[], remove as bool) {
        if (remove) this.recipeRemove(output);
        recipes.addShapeless(output, input);
    }

    function recipeAround(output as IItemStack, item as IIngredient, item1 as IIngredient, remove as bool) {
        if (remove) this.recipeRemove(output);
        recipes.addShaped(output, 
            [[item,item,item],
             [item,item1,item],
             [item,item,item]]);
    }

    function recipeCorner(output as IItemStack, item as IIngredient, remove as bool) {
        if (remove) this.recipeRemove(output);
        recipes.addShaped(output, 
            [[item,null,item],
             [null,null,null],
             [item,null,item]]);
    }

    function recipeSide(output as IItemStack, item as IIngredient, remove as bool) {
        if (remove) this.recipeRemove(output);
        recipes.addShaped(output, 
            [[null,item,null],
             [item,null,item],
             [null,item,null]]);
    }

    function recipeCornerSide(output as IItemStack, item as IIngredient, item1 as IIngredient, remove as bool) {
        if (remove) this.recipeRemove(output);
        recipes.addShaped(output, 
            [[item,item1,item],
             [item1,null,item1],
             [item,item1,item]]);
    }

    function recipeCenterCornerSide(output as IItemStack, item as IIngredient, item1 as IIngredient, item2 as IIngredient, remove as bool) {
        if (remove) this.recipeRemove(output);
        recipes.addShaped(output, 
            [[item,item1,item],
             [item1,item2,item1],
             [item,item1,item]]);
    }

    function recipeCenterCornerTwoSide(output as IItemStack, item as IIngredient, item1 as IIngredient, item2 as IIngredient, item3 as IIngredient, remove as bool) {
        if (remove) this.recipeRemove(output);
        recipes.addShaped(output, 
            [[item,item1,item],
             [item2,item3,item2],
             [item,item1,item]]);
    }

    function recipeCenterSide(output as IItemStack, item as IIngredient, item1 as IIngredient, remove as bool) {
        if (remove) this.recipeRemove(output);
        recipes.addShaped(output, 
            [[null,item,null],
             [item,item1,item],
             [null,item,null]]);
    }

    function recipeCenterCorner(output as IItemStack, item as IIngredient, item1 as IIngredient, remove as bool) {
        if (remove) this.recipeRemove(output);
        recipes.addShaped(output, 
            [[item,null,item],
             [null,item1,null],
             [item,null,item]]);
    }

    function recipeBlock(output as IItemStack, item as IIngredient, remove as bool) {
        if (remove) this.recipeRemove(output);
        recipes.addShaped(output, 
            [[item,item,item],
             [item,item,item],
             [item,item,item]]);
    }

}

global RecipeUtils as RecipeUtils = RecipeUtils("Instanced");