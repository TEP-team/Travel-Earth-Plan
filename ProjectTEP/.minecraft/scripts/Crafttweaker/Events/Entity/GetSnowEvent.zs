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

function spawnSnowBall(num1 as int, num2 as int, world as IWorld, pos as Position3f) {
    val random = world.random.nextInt(1, 10);
    if (random >= num1 && random < num2) {
        world.spawnEntity(<minecraft:snowball>.createEntityItem(world, pos));
    }
}

events.onBlockBreak(function(event as BlockBreakEvent) {
    val player = event.player;
    val world = player.world;
    if (!world.remote && event.isPlayer && isNull(player.currentItem)) {
        val id = event.block.definition.id;
        if (id == <minecraft:snow>.definition.id || id == <minecraft:snow_layer>.definition.id) {
            val pos = event.position;
            world.spawnEntity(<minecraft:snowball>.createEntityItem(world, pos));
            spawnSnowBall(1, 2, world, pos);
            spawnSnowBall(2, 3, world, pos);
            spawnSnowBall(3, 4, world, pos);
            if (id == <minecraft:snow>.definition.id) {
                world.spawnEntity(<minecraft:snowball>.createEntityItem(world, pos));
                world.spawnEntity(<minecraft:snowball>.createEntityItem(world, pos));
            }
        }
    }
});