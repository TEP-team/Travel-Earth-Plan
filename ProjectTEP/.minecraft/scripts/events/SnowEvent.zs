/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 57000
#loader crafttweaker reloadableevents
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IBlockPos;
import crafttweaker.event.PlayerInteractBlockEvent;

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    var player as IPlayer = event.player;
    var world as IWorld = player.world;

    if (!world.remote && !player.isFake() && player.isSneaking) {
        var blockID = event.block.definition.id;

        if (blockID == "minecraft:snow" || blockID == "minecraft:snow_layer") {
            var item as IItemStack = event.item;

            if (<contenttweaker:sieve_string>.matches(item)) {
                var pos as IBlockPos = event.position;
                var randomInt = world.random.nextInt(100);

                world.setBlockState(<blockstate:minecraft:air>, pos);
                world.spawnEntity(<minecraft:snowball>.createEntityItem(world, pos.up()));
                item.withDamage(item.damage - 1);

                if (randomInt < 40) {
                    world.spawnEntity(<contenttweaker:wood_residue>.createEntityItem(world, pos.up()));
                }
                if (randomInt >= 40 && randomInt < 60) {
                    world.spawnEntity(<minecraft:stick>.createEntityItem(world, pos.up()));
                }
                if (randomInt >= 60 && randomInt < 75) {
                    world.spawnEntity(<contenttweaker:big_wood_residue>.createEntityItem(world, pos.up()));
                }
                if (randomInt >= 75 && randomInt < 87) {
                    world.spawnEntity(<minecraft:string>.createEntityItem(world, pos.up()));
                }
                if (randomInt >= 87 && randomInt < 95) {
                    world.spawnEntity(<minecraft:dye:15>.createEntityItem(world, pos.up()));
                }
                if (randomInt >= 95 && randomInt <= 100) {
                    world.spawnEntity(<botania:fertilizer>.createEntityItem(world, pos.up()));
                }
            }
        }
    }
});