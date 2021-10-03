/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 57000
#loader crafttweaker reloadableevents
import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IBlockPos;
import crafttweaker.item.IItemStack;
import crafttweaker.event.PlayerInteractBlockEvent;

//medium_ingot
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    var player as IPlayer = event.player;
    var world as IWorld = player.world;

    if(!world.remote && !player.isFake() && player.isSneaking) {
        var block as IBlock = event.block;

        if(block.definition.id == "minecraft:redstone_block") {
            var item as IItemStack = event.item;

            if(<ore:dirtyDustbium>.matches(item)) {
                var pos as IBlockPos = event.position;

                world.spawnEntity(<ore:dirtyDustmium>.firstItem.createEntityItem(world, pos.up()));
                item.mutable().shrink(1);

                if(world.random.nextInt(100) <= 25) {
                    world.setBlockState(<blockstate:minecraft:stone:variant=stone>, pos);
                    world.spawnEntity(<minecraft:redstone>.createEntityItem(world, pos.up()));
                }
            }
        }
    }
});

//advanced_ingot
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    var player as IPlayer = event.player;
    var world as IWorld = player.world;
    var block as IBlock = event.block;

    if(!world.remote && !player.isFake() && player.isSneaking) {
        if(block.definition.id == <ore:blockmium>.firstItem.asBlock().definition.id && block.meta == 1) {
            var item as IItemStack = event.item;

            if(<environmentaltech:kyronite_crystal>.matches(item)) {
                item.mutable().shrink(1);

                if(world.random.nextInt(100) <= 18) {
                    world.setBlockState(<ore:blockaium>.firstItem.asBlock().definition.defaultState, event.position);
                }
            }
        }
    }
});

//tin_solder_dust
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    var player as IPlayer = event.player;
    var world as IWorld = player.world;

    if(!player.isFake() && player.isSneaking) {
        var block as IBlock = event.block;

        if(block.definition.id == "mekanism:basicblock" && block.meta == 13) {
            var item as IItemStack = event.item;

            if(<contenttweaker:electric_iron>.matches(item)) {
                var pos as IBlockPos = event.position;

                if(!world.remote) {
                    var tsd as IItemStack = <contenttweaker:tin_solder_dust>;

                    world.setBlockState(<blockstate:minecraft:air>, pos);

                    for i in 0 to 3 {
                        world.spawnEntity(tsd.createEntityItem(world, pos.up()));
                    }

                    if(world.random.nextInt(1, 100) <= 25) {
                        world.spawnEntity(tsd.createEntityItem(world, pos.up()));
                    }

                    if(world.random.nextInt(1, 100) <= 20) {
                        world.spawnEntity(tsd.createEntityItem(world, pos.up()));
                    }

                } else {
                    player.playSound("entity.generic.explode", 0.5, 1.5);
                }
            }
        }
    }
});