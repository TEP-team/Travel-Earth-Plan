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
    var living as IEntityLivingBase = event.entityLivingBase;
    var world as IWorld = living.world;
    if (!world.remote && living instanceof IPlayer) {
        var player as IPlayer = living;
        var damageType as string = event.damageSource.getDamageType();
        var drown as string = <damageSource:DROWN>;
        if (damageType == "drown") {
            player.sendMessage(player.name + " §b忘记了自己不会游泳！");
        }
        var magic as string = <damageSource:MAGIC>;
        if (damageType == "magic") {
            player.sendMessage("§dMagic , surprise！");
        }
        var lava as string = <damageSource:LAVA>;
        if (damageType == "lava") {
            player.sendMessage(player.name + " §6希望泡个岩浆浴压压惊！");
        }
        var fall as string = <damageSource:FALL>;
        if (damageType == "fall") {
            player.sendMessage(player.name + " §b尝试在天空中自由飞翔！");
        }
        var in_wall as string = <damageSource:IN_WALL>;
        if (damageType == "in_wall") {
            player.sendMessage(player.name + " §c卡墙里了，不可思议！");
        }
        var starve as string = <damageSource:STARVE>;
        if (damageType == "starve") {
            player.sendMessage(player.name + " §e因为没有干饱饭而饿死了！");
        }
        var fireworks as string = <damageSource:FIREWORKS>;
        if (damageType == "fireworks") {
            player.sendMessage(player.name + " : §b烟§a花§e还§d能§c炸§8死§9人?");
        }
        var cramming as string = <damageSource:CRAMMING>;
        if (damageType == "cramming") {
            player.sendMessage(player.name + " : §d挤地铁也太tm刺激了罢！");
        }
        var wither as string = <damageSource:WITHER>;
        if (damageType == "wither") {
            player.sendMessage(player.name + " §8因为打凋零不戴口罩而染上了病毒，真tm活该！");
        }
    }
});