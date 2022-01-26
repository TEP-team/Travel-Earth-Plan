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
        val resistance = player.isPotionActive(<potion:minecraft:resistance>);
        val regeneration = player.isPotionActive(<potion:minecraft:regeneration>);
        if(!resistance && !regeneration) {
            val distance = event.distance;
            player.update({PlayerPersisted: {fractured: distance}});
        }
    }
});

//trigger the fractured
events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
    val living = event.entityLivingBase;
    val world = living.world;
    if (!world.remote && living instanceof IPlayer) {
        val player as IPlayer = living;
        var data = player.data.PlayerPersisted;
        if (!isNull(data) && !isNull(data.fractured) && data.fractured.asFloat() >= 7.0f) {
            val fractured = player.isPotionActive(<potion:contenttweaker:fractured>);
            if (!fractured) {
                player.addPotionEffect(<potion:contenttweaker:fractured>.makePotionEffect(99999999999, 0));
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("fractured.tep.fsuccess"));
            }
        }
    }
});

//remove the slowness effect
events.onPlayerTick(function(event as PlayerTickEvent) {
    val player = event.player;
    val fractured = player.isPotionActive(<potion:contenttweaker:fractured>);
    val slowness = player.isPotionActive(<potion:minecraft:slowness>);
    var pdata = player.data;
    if (!player.world.remote && !player.isFake()) {
        if (pdata has "slowness") {
            var slowness = pdata.memberGet("slowness").asInt();
            if (slowness == 1 && !fractured && slowness) {
                player.removePotionEffect(<potion:minecraft:slowness>);
                player.update(pdata + {"slowness" : 0});
            }
        }
    }
});