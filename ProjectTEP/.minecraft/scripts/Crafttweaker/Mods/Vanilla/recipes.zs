/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IIngredient;

var plank = <ore:plankWood>;
var log = <ore:logWood>;
var glass = <ore:blockGlass>;
var pane = <ore:paneGlass>;
var iron = <ore:ingotIron>;

//all recipes (log --> plank)
var handsaw = <contenttweaker:handsaw_wood>.anyDamage().transformDamage();
for Plank in plank.items {
    var recipe = recipes.getRecipesFor(Plank);
    for rec in recipe {
        var inputs as IIngredient[] = rec.ingredients1D;
        if (inputs.length == 1) {
            for input in inputs[0].items {
                if (log.matches(input)) {
                    recipes.removeByRecipeName(rec.fullResourceDomain);
                    RecipeUtils.recipeShapeless(rec.output*2, inputs, false);
                    RecipeUtils.recipeShapeless(rec.output*4, inputs += handsaw, false);
                }
            }
        }
    }
}

//all recipes (glass --> pane)
for Pane in pane.items {
    var recipe = recipes.getRecipesFor(Pane);
    for rec in recipe {
        var inputs as IIngredient[][] = rec.ingredients2D;
        if (inputs.length == 2) {
            for input in inputs[0][0].items {
                if (glass.matches(input)) {
                    recipes.removeByRecipeName(rec.fullResourceDomain);
                    RecipeUtils.recipeShapeless(rec.output*6, [inputs[0][0]], false);
                }
            }
        }
    }
}

RecipeUtils.recipeShaped(<minecraft:stick>,
    [[<contenttweaker:wood_residue>],
	 [<contenttweaker:wood_residue>]], false);

RecipeUtils.recipeShaped(<minecraft:crafting_table>,
    [[<minecraft:brick_block>,<minecraft:brick_block>],
	 [<minecraft:brick_block>,<minecraft:brick_block>]], true);

RecipeUtils.recipeShaped(<minecraft:furnace>,
    [[<ore:cobblestone>,<ore:cobblestone>],
	 [<ore:cobblestone>,<ore:cobblestone>]], true);

RecipeUtils.recipeShaped(<bonsaitrees:bonsaipot>,
    [[iron,null,iron],
	 [iron,iron,iron]], true);

RecipeUtils.recipeShaped(<spiceoflife:lunchbag>,
    [[null,<contenttweaker:cloth_string>,null],
	 [<contenttweaker:cloth_string>,<spiceoflife:bookfoodjournal>,<contenttweaker:cloth_string>],
	 [null,<contenttweaker:cloth_string>,null]], true);

RecipeUtils.recipeShaped(<spiceoflife:lunchbox>,
    [[null,iron,null],
	 [iron,<spiceoflife:lunchbag>,iron],
	 [null,iron,null]], true);

RecipeUtils.recipeShapeless(<minecraft:flint_and_steel>,
    [<minecraft:cobblestone>,<minecraft:flint>], true);

RecipeUtils.recipeShapeless(<spiceoflife:bookfoodjournal>,
    [<minecraft:book>,<minecraft:wheat>], true);

RecipeUtils.recipeShapeless(<minecraft:blaze_powder>*5,
    [<minecraft:blaze_rod>], true);

RecipeUtils.recipeShapeless(<minecraft:dye:15>*4,
    [<minecraft:dye:15>,<cropdusting:poop>], false);