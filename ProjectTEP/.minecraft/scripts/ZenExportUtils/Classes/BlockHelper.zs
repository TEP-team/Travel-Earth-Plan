/*
    Author: Dark2932
    Flie: BlockHelper.zs
*/

#priority 999999
import crafttweaker.block.IBlock;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerInteractBlockEvent;

zenClass BlockHelper {

    function getBlockID(block as IBlock) as string {
        val id = block.definition.id;
        val meta = block.meta;
        return (meta == 0) ? id : (id ~ ":" + meta);
    }

    /*
    function getObjectBlock() {
        events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {

        });
    }
    */
    function getClass() as BlockHelper {
        return this;
    }

}

global BlockHelper as BlockHelper = BlockHelper.getClass();