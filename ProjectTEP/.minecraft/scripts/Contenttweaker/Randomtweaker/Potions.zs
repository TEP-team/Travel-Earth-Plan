/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker
import crafttweaker.text.ITextComponent;
import mods.contenttweaker.Player;
import mods.contenttweaker.Commands;
import mods.randomtweaker.cote.IPotion;

val map as int[string] = {
	"fullmoon" : 0xfff5d8,
	"bloodmoon" : 0x750005
};

for name, color in map {
	ContentUtils.potionBuilder(name, color, true, false).register();
}

val bleeding = ContentUtils.potionBuilder("bleeding", 0xB4011E, true, false) as IPotion;
bleeding.isReady = function(duration, amplifier) {
	return duration % 60 == 0 ? true : false;
};
bleeding.performEffect = function(living, amplifier) {
    val world = living.world;
 	if(!world.remote && living instanceof Player) {
		val player as Player = living;
        player.health -= 1;
        Commands.call("playsound entity.player.hurt player @p ~ ~ ~ 1 1", player, world ,false, true);
	}
}; 
bleeding.register();

val fractured = ContentUtils.potionBuilder("fractured", 0xdad4b1, true, false) as IPotion;
fractured.performEffect = function(living, amplifier) {
    val world = living.world;
 	if(!world.remote && living instanceof Player) {
		val player as Player = living;
		val isSlowness = player.isPotionActive(<potion:contenttweaker:slowness>);
		if (!isSlowness) {
			player.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(99999999999, 4));
		}
	}
}; 
fractured.register();