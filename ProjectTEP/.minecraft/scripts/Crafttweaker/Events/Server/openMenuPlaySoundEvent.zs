/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.event.PlayerRightClickItemEvent;

events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent) {
    val player = event.player;
    val world = player.world;
    val item = event.item;
    if (world.remote && !player.isFake() && <variedcommodities:phone>.matches(item)) {
        player.sendMessage("§f§l[§bTEP§f§l] §a你打开了TEP服务器菜单！");
        player.playSound("minecraft:entity.player.levelup", 1.2, 2);
    }
});