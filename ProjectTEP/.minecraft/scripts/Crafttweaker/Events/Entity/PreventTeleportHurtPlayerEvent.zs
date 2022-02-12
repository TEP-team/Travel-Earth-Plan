/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.player.IPlayer;
import crafttweaker.event.EntityLivingHurtEvent;

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
    val living = event.entityLivingBase;
    if (!living.world.remote && living instanceof IPlayer) {
        val player as IPlayer = living;
        val damageType = event.damageSource.damageType;
        if (!player.isFake() && damageType == "fall") {
            var data = player.data;
            if (data has "teleport") {
                var teleportData = data.memberGet("teleport").asInt();
                if (teleportData == 1) {
                    player.update({"teleport" : 0});
                    event.cancel();
                }
            }
        }
    }
});