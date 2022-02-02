/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 100000
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

zenClass ModularUtils {
    
    zenConstructor(arg as string) {
        this.id = arg;
    }
    
    val id as string;

    function emptyRecipeBuilder(name as string, machine as string, tick as int) as RecipePrimer {
        return RecipeBuilder.newBuilder(name, machine, tick);
    }

    function sourceBuilder(recipe as RecipePrimer, source as int, isInput as bool, isEnergy as bool) as RecipePrimer {
        if (isInput) return isEnergy ? recipe.addEnergyPerTickInput(source) : recipe.addManaInput(source);
        else return isEnergy ? recipe.addEnergyPerTickOutput(source) : recipe.addManaOutput(source);
    }

    function itemRecipeBuilder(name as string, machine as string, tick as int, source as int, inputs as IItemStack[], outputs as IItemStack[], isInput as bool, isEnergy as bool) as RecipePrimer {
        var recipe = this.emptyRecipeBuilder(name, machine, tick);
        this.sourceBuilder(recipe, source, isInput, isEnergy);
        for input in inputs {
            recipe.addItemInput(input);
        }
        for output in outputs {
            recipe.addItemOutput(output);
        }
        return recipe;
    }

    function fluidRecipeBuilder(name as string, machine as string, tick as int, source as int, inputs as ILiquidStack[], outputs as ILiquidStack[], isInput as bool, isEnergy as bool) as RecipePrimer {
        var recipe = this.emptyRecipeBuilder(name, machine, tick);
        this.sourceBuilder(recipe, source, isInput, isEnergy);
        for input in inputs {
            recipe.addFluidInput(input); 
        } 
        for output in outputs {
            recipe.addFluidOutput(output);
        }
        return recipe;
    }
    
}