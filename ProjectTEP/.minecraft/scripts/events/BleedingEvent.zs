/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 57000
#loader crafttweaker reloadableevents
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent.fromTranslation;
import crafttweaker.event.EntityLivingHurtEvent;

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
    var living as IEntityLivingBase = event.entityLivingBase;
    var world as IWorld = living.world;

    if(!world.remote && living instanceof IPlayer && world.random.nextInt(100) <= 8) {
        var player as IPlayer = living;
        var attacker as IEntity = event.damageSource.trueSource;
        if(!isNull(attacker) && !attacker instanceof IPlayer && attacker instanceof IEntityLivingBase) {
            var bleeding as bool = living.isPotionActive(<potion:contenttweaker:bleeding>);
            if (!bleeding) {
                player.addPotionEffect(<potion:contenttweaker:bleeding>.makePotionEffect(6000, 0));
                player.sendRichTextMessage(fromTranslation("bleeding.tep.bsuccess"));
            }
        }
    }
});