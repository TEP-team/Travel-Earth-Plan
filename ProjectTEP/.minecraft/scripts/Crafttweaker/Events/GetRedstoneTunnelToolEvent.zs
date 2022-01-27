/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.item.IItemStack;
import crafttweaker.event.PlayerInteractBlockEvent;

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    val player = event.player;
    val world = event.world;
    if (!world.remote && !player.isFake() && player.isSneaking) {
        val item = event.item;
        val block = event.block;
        if (<minecraft:redstone_block>.definition.id == block.definition.id && <compactmachines3:tunneltool>.matches(item)) {
           val pos = event.position;
           world.spawnEntity(<compactmachines3:redstonetunneltool>.createEntityItem(world, pos.up()));
           item.mutable().shrink(1);
        }
    }
});