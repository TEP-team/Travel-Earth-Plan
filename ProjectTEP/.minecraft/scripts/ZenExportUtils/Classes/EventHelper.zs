/*
    Author: Dark2932
    Flie: EventHelper.zs
*/

#priority 999999
import crafttweaker.block.IBlock;
import crafttweaker.event.PlayerInteractBlockEvent;

zenClass EventHelper {

    function getBlockDataString(block as IBlock) as string {
        return block.data.asString();
    }

    function getClass() as EventHelper {
        return this;
    }

}

global EventHelper as EventHelper = EventHelper.getClass();