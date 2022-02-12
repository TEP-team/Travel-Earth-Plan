/*
    Author: Dark2932
    Flie: BlockUtils.zs
*/

#priority 1000000
#loader crafttweaker reloadableevents
import crafttweaker.block.IBlock;

zenClass BlockUtils {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;

    function getBlockID(block as IBlock, isDetailed as bool) as string {
        val id = block.definition.id;
        val meta = block.meta;            
        return isDetailed ? (id ~ ":" ~ meta) : id;
    }

}

global BlockUtils as BlockUtils = BlockUtils("Instanced");