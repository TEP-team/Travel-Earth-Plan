/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import crafttweaker.event.EntityLivingDeathEvent;
import mods.ctintegration.date.IDate;
import mods.ctintegration.util.DateUtil;
import mods.randomtweaker.file.IProp;

events.onEntityLivingDeath(function(event as EntityLivingDeathEvent) {
    val living = event.entityLivingBase;
    val world = living.world;
    if(!world.remote && living instanceof IPlayer) {
        val player as IPlayer = living;
        val attacker = event.damageSource.trueSource;
        if(!isNull(attacker) && attacker instanceof IEntityLivingBase) {
            val bleeding = living.isPotionActive(<potion:contenttweaker:bleeding>);
            if (attacker instanceof IPlayer) {
                val time as IDate = DateUtil.now().toString();
                IProp.write(time, attacker.name ~ " killed " ~ player.name);
            }
        }
    }
});