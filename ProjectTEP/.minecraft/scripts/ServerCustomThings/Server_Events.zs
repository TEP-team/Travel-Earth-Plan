#loader crafttweaker reloadableevents
#priority 32699

import crafttweaker.item.IItemStack;
import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.event.EntityLivingJumpEvent;
import crafttweaker.event.EntityLivingFallEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.text.ITextComponent;

//cd_time of tp_gem
events.onPlayerTick(function(event as PlayerTickEvent) {
    var player as IPlayer = event.player;
    var world as IWorld = player.world;
    if (!world.remote) {
        var pdata = player.data;
        if (pdata has "cd_time") {
            var cdtime = pdata.memberGet("cd_time") as int;
            if (cdtime > 0) {
                player.update(pdata + {"cd_time": cdtime - 1});
                    }
                }
            }
        });

//bleeding event
val mobs as string[] = ["minecraft:zombie", "minecraft:skeleton", "minecraft:creeper", "minecraft:spider", "minecraft:enderman", "minecraft:stray", "minecraft:witch"];
events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
    var player as IEntityLivingBase = event.entityLivingBase;
    var world as IWorld = player.world;
    if (!world.remote && world.random.nextInt(0, 100) <= 8 && player instanceof IPlayer) {
        var attacker as IEntity = event.damageSource.trueSource;
        if (!isNull(attacker) && !attacker instanceof IPlayer && attacker instanceof IEntityLivingBase && mobs has attacker.definition.id) {
            player.addPotionEffect(<potion:contenttweaker:bleeding>.makePotionEffect(6000, 0));
            player.sendRichTextMessage(ITextComponent.fromTranslation("bleeding.tep.bsuccess"));
                }
            }
        });

//jump event [FRACTURED]
events.onEntityLivingJump(function(event as EntityLivingJumpEvent) {
    var living as IEntityLivingBase = event.entityLivingBase;
    var world as IWorld = living.world;
    var Fractured as bool = living.isPotionActive(<potion:contenttweaker:fractured>);
    if (living instanceof IPlayer && Fractured) {
        var player as IPlayer = living;
        if (world.remote) {
            player.playSound("minecraft:entity.player.hurt", 1, 1);
        } if (!world.remote) {
            player.health -= 2;
            player.sendRichTextMessage(ITextComponent.fromTranslation("fractured.tep.jump"));
        }
    }
});

//distance save event [FRACTURED]
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

//fractured event
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