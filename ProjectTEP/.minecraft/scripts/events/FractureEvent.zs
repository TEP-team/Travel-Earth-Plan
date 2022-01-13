/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.data.IData;
import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.text.ITextComponent;
import crafttweaker.event.EntityLivingFallEvent;
import crafttweaker.event.EntityLivingHurtEvent;

events.onEntityLivingFall(function(event as EntityLivingFallEvent) {
    var living as IEntityLivingBase = event.entityLivingBase;
    var distance as float = event.distance;
    var world as IWorld = living.world;

    var resistance as bool = living.isPotionActive(<potion:minecraft:resistance>);
    var regeneration as bool = living.isPotionActive(<potion:minecraft:regeneration>);

    if (!world.remote && living instanceof IPlayer) {
        var player as IPlayer = living;

        if(!resistance && !regeneration) {
            player.update({PlayerPersisted: {fractured: distance}});
        }
    }
});

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
    var living as IEntityLivingBase = event.entityLivingBase;
    var world as IWorld = living.world;
    if (!world.remote && living instanceof IPlayer) {
        var player as IPlayer = living;
        var data as IData = player.data.PlayerPersisted;
        if (!isNull(data) && !isNull(data.fractured) && data.fractured.asFloat() >= 7.0f) {
            var Fractured as bool = living.isPotionActive(<potion:contenttweaker:fractured>);
            if (!Fractured) {
                player.addPotionEffect(<potion:contenttweaker:fractured>.makePotionEffect(99999999999, 0));
                player.sendRichTextMessage(ITextComponent.fromTranslation("fractured.tep.fsuccess"));
            }
        }
    }
});

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
    var living as IEntityLivingBase = event.entityLivingBase;
    var world as IWorld = living.world;
    if (!world.remote) {
        var type as string = event.damageSource.damageType;
        var Fractured as bool = living.isPotionActive(<potion:contenttweaker:fractured>);
        if (type == "fall" && Fractured) {
            var player as IPlayer = living;
            player.health -= 2;
        }
    }
});