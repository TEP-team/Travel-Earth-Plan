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
import crafttweaker.damage.IDamageSource;
import crafttweaker.event.EntityLivingDeathEvent;

events.onEntityLivingDeath(function(event as EntityLivingDeathEvent) {
    var player as IEntityLivingBase = event.entityLivingBase;
    var world as IWorld = player.world;
    if (!world.remote && player instanceof IPlayer) {
        var damageType as string = event.damageSource.getDamageType();
        var drown as string = <damageSource:DROWN>;
        if (damageType == "drown") {
            player.sendMessage("§b有个不会游泳的人尝试下水游泳！");
        }
        var magic as string = <damageSource:MAGIC>;
        if (damageType == "magic") {
            player.sendMessage("§dMagic , surprise！");
        }
        var lava as string = <damageSource:LAVA>;
        if (damageType == "lava") {
            player.sendMessage("§6泡个岩浆浴压压惊?");
        }
        var fall as string = <damageSource:FALL>;
        if (damageType == "fall") {
            player.sendMessage("§b有个人正在天空中自由飞翔！");
        }
        var in_wall as string = <damageSource:IN_WALL>;
        if (damageType == "in_wall") {
            player.sendMessage("§c不可思议！竟然还有人能卡墙里?");
        }
        var fire1 as string = <damageSource:ON_FIRE>;
        if (damageType == "fire1") {
            player.sendMessage("§6学学Blaze，瞧瞧你那破胆儿.");
        }
        var fire2 as string = <damageSource:IN_FIRE>;
        if (damageType == "fire2") {
            player.sendMessage("§6学学Blaze，瞧瞧你那破胆儿.");
        }
        var starve as string = <damageSource:STARVE>;
        if (damageType == "starve") {
            player.sendMessage("§e这年头吃不上饭的可真多啊.");
        }
        var fireworks as string = <damageSource:FIREWORKS>;
        if (damageType == "fireworks") {
            player.sendMessage("§b烟§a花§e还§d能§c炸§8死§9人?");
        }
        var cramming as string = <damageSource:CRAMMING>;
        if (damageType == "cramming") {
            player.sendMessage("§d挤地铁也太tm刺激了罢！");
        }
        var wither as string = <damageSource:WITHER>;
        if (damageType == "wither") {
            player.sendMessage("§8器官衰竭会导致生命活动停止!");
        }
    }
});