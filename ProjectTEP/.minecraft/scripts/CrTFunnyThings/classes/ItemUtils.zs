/*
    Author: Dark2932
    Flie: ItemUtils.zs
*/

#priority 1000000
#loader crafttweaker reloadableevents
import crafttweaker.item.IItemStack;

zenClass ItemUtils {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;

    function getItemID(item as IItemStack, isDetailed as bool) as string {
        val id = item.definition.id;
        val meta = item.metadata;
        return isDetailed ? (id ~ ":" ~ meta) : id;
    }

}

global ItemUtils as ItemUtils = ItemUtils("Instanced");