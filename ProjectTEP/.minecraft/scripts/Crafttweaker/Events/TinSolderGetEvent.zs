/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.event.PlayerInteractBlockEvent;

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    val player = event.player;
    val world = player.world;
    if (!player.isFake() && player.isSneaking) {
        val block = event.block;
        val item = event.item;
        if (block.definition.id == "mekanism:basicblock" && block.meta == 13 && <contenttweaker:electric_iron:*>.matches(item)) {
            if (!world.remote) {
                val pos = event.position;
                world.setBlockState(<blockstate:minecraft:air>, pos);
                for i in 0 to 3 {
                    world.spawnEntity(<contenttweaker:tin_solder_dust>.createEntityItem(world, pos.up()));
                }
                val stack = player.currentItem;
                if (!isNull(stack)) {
                    for k in 0 to 9 {
                        if (stack.matches(player.getHotbarStack(k))) {
                            player.replaceItemInInventory(k, stack.withDamage(stack.damage + 1));
                            if (stack.damage >= 90) {
                                player.replaceItemInInventory(k, null);
                            }
                        }
                    }
                }
            } else {
                player.playSound("entity.generic.explode", 0.5, 1.5);
            }
        }
    }
});