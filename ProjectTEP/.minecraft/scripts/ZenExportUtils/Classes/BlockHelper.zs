/*
    Author: Dark2932
    Flie: BlockHelper.zs
*/

#priority 999999
import crafttweaker.block.IBlock;

zenClass BlockHelper {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;

    function getBlockID(block as IBlock) as string {
        val id = block.definition.id;
        val meta = block.meta;
        return (meta == 0) ? id : (id ~ ":" ~ meta);
    }

}

global BlockHelper as BlockHelper = BlockHelper("Instanced");