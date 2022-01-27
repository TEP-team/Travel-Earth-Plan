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
import crafttweaker.text.ITextComponent;
import crafttweaker.event.EntityLivingHurtEvent;

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
    val living = event.entityLivingBase;
    val world = living.world;
    if(!world.remote && living instanceof IPlayer && world.random.nextInt(100) <= 8) {
        val player as IPlayer = living;
        val attacker = event.damageSource.trueSource;
        if(!isNull(attacker) && !attacker instanceof IPlayer && attacker instanceof IEntityLivingBase) {
            val bleeding = living.isPotionActive(<potion:contenttweaker:bleeding>);
            if (!bleeding) {
                player.addPotionEffect(<potion:contenttweaker:bleeding>.makePotionEffect(6000, 0));
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("bleeding.tep.bsuccess"));
            }
        }
    }
});