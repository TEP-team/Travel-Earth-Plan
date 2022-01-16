/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker
import crafttweaker.world.IWorld;
import crafttweaker.text.ITextComponent;
import mods.contenttweaker.Player;
import mods.contenttweaker.Commands;
import mods.randomtweaker.cote.IPotion;
import scripts.Classes.ContentUtils.ContentUtils;

val CUtils as ContentUtils = ContentUtils("Instanced");
val map as int[string] = {
	"fullmoon" : 0xfff5d8,
	"bloodmoon" : 0x750005
};

for name, color in map {
	CUtils.potionBuilder(name, color, true, false).register();
}

var bleeding = CUtils.potionBuilder("bleeding", 0xB4011E, true, false) as IPotion;
bleeding.isReady = function(duration, amplifier) {
	return duration % 60 == 0 ? true : false;
};
bleeding.performEffect = function(living, amplifier) {
    var world as IWorld = living.world;
 	if(!world.remote && living instanceof Player) {
		var player as Player = living;
        player.health -= 1;
        Commands.call("playsound entity.player.hurt player @p ~ ~ ~ 1 1", player, world ,false, true);
	}
}; 
bleeding.register();

var fractured = CUtils.potionBuilder("fractured", 0xdad4b1, true, false) as IPotion;
fractured.performEffect = function(living, amplifier) {
    var world as IWorld = living.world;
 	if(!world.remote && living instanceof Player) {
		var player as Player = living;
		var isSlowness = player.isPotionActive(<potion:contenttweaker:slowness>);
		if (!isSlowness) {
			player.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(99999999999, 4));
		}
	}
}; 
fractured.register();