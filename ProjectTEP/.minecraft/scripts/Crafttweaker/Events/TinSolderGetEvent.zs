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
    val player as IPlayer = event.player;
    val world as IWorld = player.world;
    if (!player.isFake() && player.isSneaking) {
        val block = event.block;
        val item = event.item;
        if (block.definition.id == "mekanism:basicblock" && block.meta == 13 && <contenttweaker:electric_iron:*>.matches(item)) {
            val pos = event.position;
            val pos3f = pos.asPosition3f();
            if (!world.remote) {
                val tsd = <contenttweaker:tin_solder_dust>;
                val stack = player.currentItem;
                if (!isNull(stack)) {
                    for k in 0 to 9 {
                        val hotbar = player.getHotbarStack(k);
                        if (stack.matches(hotbar)) {
                            player.replaceItemInInventory(k, stack.withDamage(stack.damage + 1));
                            if (stack.damage >= 90) {
                                player.replaceItemInInventory(k, null);
                                player.playSound("item.shield.break", 1, 1);
                            }
                        }
                    }
                }
                world.setBlockState(<blockstate:minecraft:air>, pos);
                for i in 0 to 3 {
                    world.spawnEntity(tsd.createEntityItem(world, pos.up()));
                }
                val random = world.random.nextInt(1, 100);
                if (random <= 25) {
                    world.spawnEntity(tsd.createEntityItem(world, pos.up()));
                }
            } else {
                player.playSound("entity.generic.explode", 0.5, 1.5);
            }
        }
    }
});