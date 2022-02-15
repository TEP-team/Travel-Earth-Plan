/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 100000
#loader contenttweaker
import crafttweaker.text.ITextComponent;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.IItemFoodEaten;
import mods.zenutils.cotx.Item;
import mods.zenutils.cotx.EnergyItem;
import mods.zenutils.cotx.Block;
import mods.randomtweaker.cote.IPotion;

zenClass ContentUtils {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;

    function itemBuilder(name as string, rarity as string, maxDamage as int, maxStackSize as int, glowing as bool) as Item {
        var item as Item = VanillaFactory.createExpandItem(name);
        item.creativeTab = <creativetab:tep>;
        item.rarity = rarity;
        item.maxDamage = maxDamage;
        item.maxStackSize = maxStackSize;
        item.glowing = glowing;
        return item;
    }

    function durationBuilder(item as Item, duration as int) as Item {
        item.maxItemUseDuration = duration;
        item.itemRightClick = function(stack, world, player, hand) {
            return "success";
        };
        return item;
    }

    function energyItemBuilder(name as string, rarity as string, capacity as int, maxReceive as int, maxExtract as int, glowing as bool) as EnergyItem {
        var energy as EnergyItem = VanillaFactory.createEnergyItem(name, capacity, maxReceive, maxExtract);
        energy.creativeTab = <creativetab:tep>;
        energy.maxStackSize = 1;
        energy.rarity = rarity;
        energy.glowing = glowing;
        return energy;
    }

    function blockBuilder(name as string, blockmaterial as BlockMaterial, sound as SoundType, hardness as int, lightValue as int, toolLevel as int, entitySpawnable as bool) as Block {
        var block as Block = VanillaFactory.createExpandBlock(name, blockmaterial);
        block.creativeTab = <creativetab:tep>;
        block.blockSoundType = sound;
        block.entitySpawnable = entitySpawnable;
        block.blockHardness = hardness;
        block.lightValue = lightValue;
        block.toolLevel = toolLevel;
        return block;   
    }

    function fluidBuilder(name as string, still as string, flow as string, density as int, viscosity as int) as Fluid {
        var fluid as Fluid = VanillaFactory.createFluid(name, 0x000000);
        fluid.stillLocation = "contenttweaker:blocks/fluids/" + still;
        fluid.flowingLocation = "contenttweaker:blocks/fluids/" + flow;
        fluid.density = density;
        fluid.viscosity = viscosity;
        fluid.colorize = false;
        return fluid;
    }

    function foodBuilder(name as string, heal as int, saturation as float, always as bool) as ItemFood {
        var food as ItemFood = VanillaFactory.createItemFood(name, heal);
        food.saturation = saturation;
        food.alwaysEdible = always;
        return food;
    }

    function potionBuilder(name as string, color as int, bad as bool, beneficial as bool) as IPotion {
        var potion as IPotion = VanillaFactory.createPotion(name, color);
        potion.badEffectIn = bad;
        potion.beneficial = beneficial;
        potion.shouldRenderHUD = true;
        potion.shouldRender = true;
        potion.instant = false;
        return potion;
    }
    
}

global ContentUtils as ContentUtils = ContentUtils("Instanced");