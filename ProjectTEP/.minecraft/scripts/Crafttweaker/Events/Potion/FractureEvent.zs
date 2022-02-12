/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.EntityLivingFallEvent;
import crafttweaker.event.EntityLivingHurtEvent;

//save the distance
events.onEntityLivingFall(function(event as EntityLivingFallEvent) {
    val living = event.entityLivingBase;
    val world = living.world;
    if (!world.remote && living instanceof IPlayer) {
        val player as IPlayer = living;
        val distance = event.distance;
        player.update({fractured : distance});
    }
});

//trigger the fractured
events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
    val living = event.entityLivingBase;
    val world = living.world;
    val damageType = event.damageSource.damageType;
    if (!world.remote && living instanceof IPlayer && damageType == "fall") {
        val player as IPlayer = living;
        var data = player.data;
        var fracturedData = data.fractured;
        if (data has "teleport") {
            var teleportData = data.memberGet("teleport").asInt();
            if (teleportData != 0 && !isNull(fracturedData) && fracturedData.asFloat() >= 7.0f) {
                val isFractured = player.isPotionActive(<potion:contenttweaker:fractured>);
                if (!isFractured) {
                    player.addPotionEffect(<potion:contenttweaker:fractured>.makePotionEffect(99999999999, 0));
                    player.sendRichTextStatusMessage(ITextComponent.fromTranslation("fractured.tep.fsuccess"));
                }
            }
        }
    }
});

//remove the slowness effect
events.onPlayerTick(function(event as PlayerTickEvent) {
    val player = event.player;
    var data = player.data;
    if (!player.world.remote && !player.isFake()) {
        if (data has "slowness") {
            var slownessData = data.memberGet("slowness").asInt();
            val isFractured = player.isPotionActive(<potion:contenttweaker:fractured>);
            val isSlowness = player.isPotionActive(<potion:minecraft:slowness>);
            if (slownessData == 1 && !isFractured && isSlowness) {
                player.removePotionEffect(<potion:minecraft:slowness>);
                player.update({"slowness" : 0});
            }
        }
    }
});