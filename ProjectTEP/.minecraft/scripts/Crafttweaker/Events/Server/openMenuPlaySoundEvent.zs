/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.event.PlayerInteractEvent;

events.onPlayerInteract(function(event as PlayerInteractEvent) {
    val player = event.player;
    val world = player.world;
    if (world.remote && !player.isFake() && <variedcommodities:phone>.matches(player.mainHandHeldItem)) {
        player.sendRMessage("§f§l[§bTEP§f§l] §a你打开了TEP服务器菜单！");
        player.playSound("minecraft:entity.player.levelup", 1.2, 2);
    }
});