/*
    Author: Dark2932
    Flie: Chest.zs
*/

#priority 999998
import crafttweaker.event.PlayerInteractBlockEvent;

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    val player = event.player;
    if (!player.world.remote && player.isSneaking && player.creative) {
        val block = event.block;
        val item = event.item;
        if (block.definition.id == "minecraft:chest" && ItemHelper.getItemID(item) == ItemHelper.getItemID(<minecraft:dye:0>)) {
            print(EventHelper.getBlockDataString(block));
        }
    }
});