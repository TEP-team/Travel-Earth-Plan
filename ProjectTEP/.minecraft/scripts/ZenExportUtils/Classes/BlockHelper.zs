/*
    Author: Dark2932
    Flie: BlockHelper.zs
*/
#norun
#priority 999999
import crafttweaker.block.IBlock;

zenClass BlockHelper {

    function getBlockID(block as IBlock) as string {
        val id = block.definition.id;
        val meta = block.meta;
        return (meta == 0) ? id : (id ~ ":" + meta);
    }

    function getClass() as BlockHelper {
        return this;
    }

}

global BlockHelper as BlockHelper = BlockHelper.getClass();