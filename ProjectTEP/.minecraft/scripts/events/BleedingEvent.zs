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
/*
val mobs as string[] =
[
    "minecraft:zombie",
    "minecraft:skeleton",
    "minecraft:creeper",
    "minecraft:spider",
    "minecraft:enderman",
    "minecraft:stray",
    "minecraft:witch"
];
*/
events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
    var player as IEntityLivingBase = event.entityLivingBase;
    var world as IWorld = player.world;
    if (!world.remote) {
        if (player instanceof IPlayer && world.random.nextInt(1, 100) <= 8) {
            var attacker as IEntity = event.damageSource.trueSource;
            if (!isNull(attacker) /*&& !attacker instanceof IPlayer && attacker instanceof IEntityLivingBase && mobs has attacker*/) {
                player.addPotionEffect(<potion:contenttweaker:bleeding>.makePotionEffect(6000, 0));
                player.sendRichTextMessage(fromTranslation("bleeding.tep.bsuccess"));
            }
        }
    }
});