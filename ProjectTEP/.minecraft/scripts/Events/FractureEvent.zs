/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#loader crafttweaker reloadableevents
#priority 20000

import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.text.ITextComponent;
import crafttweaker.event.EntityLivingFallEvent;
import crafttweaker.event.EntityLivingHurtEvent;

events.onEntityLivingFall(function(event as EntityLivingFallEvent) {
    var distance = event.distance as float;
    var living as IEntityLivingBase = event.entityLivingBase;
    var world as IWorld = living.world;
    var potion1 as bool = living.isPotionActive(<potion:minecraft:resistance>);
    var potion2 as bool = living.isPotionActive(<potion:minecraft:regeneration>);
    if (!world.remote && living instanceof IPlayer) {
        var player as IPlayer = living;
        if (potion1 && potion2) {
            return;
        }
        else if (distance > 0) {
            player.update({PlayerPersisted: {fractured: distance}});
        }
    }
});

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
    var living as IEntityLivingBase = event.entityLivingBase;
    var world as IWorld = living.world;
    if (!world.remote && living instanceof IPlayer) {
        var player as IPlayer = living;
        var pdp = player.data.PlayerPersisted;
        var distance = player.data.PlayerPersisted.fractured;
        if (!isNull(pdp) && !isNull(distance) && distance.asFloat() >= 7) {
            player.addPotionEffect(<potion:contenttweaker:fractured>.makePotionEffect(99999999999, 0));
            player.sendRichTextMessage(ITextComponent.fromTranslation("fractured.tep.fsuccess"));
        }
    }
});