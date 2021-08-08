#loader contenttweaker
#priority 32758

import crafttweaker.world.IWorld;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Player;
import mods.contenttweaker.Commands;
import mods.randomtweaker.cote.Potion;
import crafttweaker.text.ITextComponent;

//bleeding
var bl as Potion = VanillaFactory.createPotion("bleeding", 0xB4011E);
bl.badEffectIn = true;
bl.shouldRenderHUD = true;
bl.shouldRender = true;
bl.beneficial = false;
bl.instant = false;
bl.isReady = function(duration, amplifier) {
	if (duration % 60 == 0) {
		return true;
	}
    return false;
};
bl.performEffect = function(living, amplifier) {
    var world as IWorld = living.world;
 	if(!world.remote && living instanceof Player) {
		var player as Player = living;
        player.health -= 1;
        Commands.call("playsound entity.player.hurt player @p ~ ~ ~ 1 1", player, world ,false, true);
	}
}; 
bl.register();

//fractured
var fr as Potion = VanillaFactory.createPotion("fractured", 0xdad4b1);
fr.badEffectIn = true;
fr.shouldRenderHUD = true;
fr.shouldRender = true;
fr.beneficial = false;
fr.instant = false;
fr.isReady = function(duration, amplifier) {
	if (duration % 5 == 0) {
		return true;
	}
    return false;
};
fr.performEffect = function(living, amplifier) {
    var world as IWorld = living.world;
	var sprinting = living.isSprinting;
 	if(!world.remote && living instanceof Player && sprinting) {
		var player as Player = living;
		player.sendRichTextMessage(ITextComponent.fromTranslation("fractured.tep.sprint"));
		player.health -= 2;
		Commands.call("playsound entity.player.hurt player @p ~ ~ ~ 1 1", player, world ,false, true);
	}
}; 
fr.register();