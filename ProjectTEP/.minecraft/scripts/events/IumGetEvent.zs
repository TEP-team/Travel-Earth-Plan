/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 57000
#loader crafttweaker reloadableevents
import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerInteractBlockEvent;

//medium_ingot
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    var player as IPlayer = event.player;
    var world as IWorld = player.world;
    if (!world.remote && !player.isFake() && player.isSneaking) {
        var block = event.block;
        if (<minecraft:redstone_block>.asBlock().definition.id == block.definition.id) {
            var item = event.item;
            if (<contenttweaker:material_part:8>.matches(item)) {
                world.spawnEntity(<contenttweaker:material_part:25>.createEntityItem(world, event.x, event.y + 1, event.z));
                item.mutable().shrink(1);
                if (world.random.nextInt(0, 100) <= 25) {
                    world.setBlockState(<blockstate:minecraft:stone:variant=stone>, event.position);
                    world.spawnEntity(<minecraft:redstone>.createEntityItem(world, event.x, event.y + 1, event.z));
                }
            }
        }
    }
});

//advanced_ingot
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    var player as IPlayer = event.player;
    var world as IWorld = player.world;
    if (!world.remote && !player.isFake() && player.isSneaking) {
        if (<contenttweaker:sub_block_holder_1:1>.asBlock().definition.id == event.block.definition.id) {
            var item = event.item;
            if (<environmentaltech:kyronite_crystal>.matches(item)) {
                item.mutable().shrink(1);
                if (world.random.nextInt(0, 100) <= 18) {
                    world.setBlockState(<blockstate:contenttweaker:sub_block_holder_0>, event.position);
                }
            }
        }
    }
});

//tin_solder_dust
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    var player as IPlayer = event.player;
    var world as IWorld = player.world;
    if (!world.remote && !player.isFake() && player.isSneaking) {
        var block = event.block;
        if (<mekanism:basicblock:13>.asBlock().definition.id == block.definition.id) {
            var item = event.item;
            if (<contenttweaker:electric_iron>.matches(item)) {
                var tsd = <contenttweaker:tin_solder_dust>;
                var x = event.x;
                var y = event.y;
                var z = event.z;
                world.spawnEntity(tsd.createEntityItem(world, x, y + 1, z));
                world.setBlockState(<blockstate:minecraft:air>, event.position);
                item.mutable().shrink(1);
                item.damage -= 5;
                var random = world.random;
                if (random.nextInt(0, 100) <= 25) {
                    world.spawnEntity(tsd.createEntityItem(world, x, y + 1, z));
                }
                if (random.nextInt(0, 100) <= 20) {
                    world.spawnEntity(tsd.createEntityItem(world, x, y + 1, z));
                }
                if (random.nextInt(0, 100) <= 15) {
                    world.spawnEntity(tsd.createEntityItem(world, x, y + 1, z));
                }
                if (random.nextInt(0, 100) <= 10) {
                    world.spawnEntity(tsd.createEntityItem(world, x, y + 1, z));
                }
            }
        }
    }
});