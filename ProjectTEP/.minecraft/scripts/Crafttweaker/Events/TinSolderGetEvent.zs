/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IBlockPos;
import crafttweaker.item.IItemStack;
import crafttweaker.event.PlayerInteractBlockEvent;

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