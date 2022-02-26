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
        if (BlockHelper.getBlockID(block, true) == "mekanism:basicblock:13" && <contenttweaker:electric_iron:*>.matches(item)) {
            if (!world.remote) {
                val pos = event.position;
                item.mutable().attemptDamageItem(1);
                world.setBlockState(<blockstate:minecraft:air>, pos);
                world.spawnEntity(<contenttweaker:tin_solder_dust>.withAmount(world.random.nextInt(1, 4)).createEntityItem(world, pos.up()));
            } else {
                player.playSound("entity.generic.explode", 0.5, 1.5);
            }
        }
    }
});