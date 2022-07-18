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
    if (!world.remote && !player.isFake()) {
        if (event.block.definition.id == "minecraft:dirt" && <botania:fertilizer>.matches(event.item)) {
            world.setBlockState(<blockstate:minecraft:grass>, event.position);
        }
    }
});