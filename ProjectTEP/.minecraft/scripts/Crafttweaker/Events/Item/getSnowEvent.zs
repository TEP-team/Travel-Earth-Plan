/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.world.IWorld;
import crafttweaker.util.Position3f;
import crafttweaker.event.BlockBreakEvent;

events.onBlockBreak(function(event as BlockBreakEvent) {
    val player = event.player;
    val world = player.world;
    if (!world.remote && event.isPlayer) {
        val item = player.currentItem;
        if (isNull(item) || (!isNull(item) && !(item.definition.id has "shovel"))) {
            val id = event.block.definition.id;
            val id1 = <minecraft:snow>.definition.id;
            val id2 = <minecraft:snow_layer>.definition.id;
            if (id == id1 || id == id2) {
                val pos = event.position;
                val random = world.random.nextInt(1, 2);
                world.spawnEntity(<minecraft:snowball>.withAmount(random).createEntityItem(world, pos));
                if (id == id1) {
                    world.spawnEntity(<minecraft:snowball>.withAmount(random).createEntityItem(world, pos));
                }
            }
        }
    }
});