/*
    Author: Dark2932
    Flie: EventHelper.zs
*/

#priority 999999
import crafttweaker.block.IBlock;
import crafttweaker.event.PlayerInteractBlockEvent;

zenClass EventHelper {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;

    function getBlockDataString(block as IBlock) as string {
        return block.data.asString();
    }

}

global EventHelper as EventHelper = EventHelper("Instanced");