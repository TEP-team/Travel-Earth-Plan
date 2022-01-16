/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker
import crafttweaker.text.ITextComponent;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.IItemFoodEaten;
import scripts.Classes.ContentUtils.ContentUtils;

val CUtils as ContentUtils = ContentUtils("Instanced");

var brain = CUtils.foodBuilder("brain", 2, 0.5, false) as ItemFood;
brain.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote && !player.isFake()) {
        player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(2400, 0));
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(140, 0));
        player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(260, 0));
        player.sendRichTextMessage(ITextComponent.fromTranslation("brain.tep.eat"));
    }
};
brain.register();