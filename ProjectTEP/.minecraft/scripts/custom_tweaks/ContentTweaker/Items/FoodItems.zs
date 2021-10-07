/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70005
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.IItemFoodEaten;
import crafttweaker.text.ITextComponent.fromTranslation;

//noodles
VanillaFactory.createItemFood("noodles", 2).register();

//noodles_bubbled
val noodles_bubbled = VanillaFactory.createItemFood("noodles_bubbled", 8);
noodles_bubbled.saturation = 1.0;
noodles_bubbled.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote && !player.isFake()) {
        player.addPotionEffect(<potion:simpledifficulty:cold_resist>.makePotionEffect(2400, 0));
        player.health += 1;
    }
};
noodles_bubbled.register();

//brain
val brain = VanillaFactory.createItemFood("brain", 1);
brain.saturation = 0.5;
brain.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote && !player.isFake()) {
        player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(2400, 0));
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(140, 0));
        player.sendRichTextMessage(fromTranslation("brain.tep.eat"));
        player.health -= 1;
    }
};
brain.register();