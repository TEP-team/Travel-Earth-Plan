/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker
import crafttweaker.world.IWorld;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Player;
import mods.contenttweaker.Commands;
import mods.randomtweaker.cote.IPotion;
import crafttweaker.text.ITextComponent;

function potionBuilder(name as string, color as int) {
	var potion as IPotion = VanillaFactory.createPotion(name, color);
	potion.badEffectIn = true;
	potion.shouldRenderHUD = true;
	potion.shouldRender = true;
	potion.beneficial = false;
	potion.instant = false;
	potion.register();
}

//fullmoon and bloodmoon
var potions as string[] = ["fullmoon","bloodmoon"];
var colors as int[] = [0xfff5d8,0x750005];
for i, Potions in potions {
	potionBuilder(Potions, colors[i]);
}

//bleeding
var bl as IPotion = VanillaFactory.createPotion("bleeding", 0xB4011E);
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
var fr as IPotion = VanillaFactory.createPotion("fractured", 0xdad4b1);
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
		player.addPotionEffect(<potion:minecraft:long_slowness>.makePotionEffect(25, 2));
	}
}; 
fr.register();