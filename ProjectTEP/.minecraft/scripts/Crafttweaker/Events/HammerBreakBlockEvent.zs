/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.event.BlockBreakEvent;

events.onBlockBreak(function(event as BlockBreakEvent) {
    val player = event.player;
    if (!player.world.remote && event.isPlayer) {
        val item = player.currentItem;
        if (!isNull(item) && <contenttweaker:hammer_flint:*>.matches(item)) {
            for i in 0 to 9 {
                val hotbar = player.getHotbarStack(i);
                if (item.matches(hotbar)) {
                    player.replaceItemInInventory(i, item.withDamage(item.damage + 1));
                    if (item.damage >= 2) {
                        player.replaceItemInInventory(i, null);
                        player.playSound("item.shield.break", 1, 1);
                    }
                }
            }
        }
    }
});