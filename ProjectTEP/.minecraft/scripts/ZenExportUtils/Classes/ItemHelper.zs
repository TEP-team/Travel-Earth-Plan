/*
    Author: Dark2932
    Flie: ItemHelper.zs
*/

#priority 999999
import crafttweaker.item.IItemStack;

zenClass ItemHelper {

    function getID(item as IItemStack) as string {
        val id = item.definition.id;
        val meta = item.metadata;
        return (meta == 0) ? id : (id ~ meta);
    }

    function getClass() as ItemHelper {
        return this;
    }

}

global ItemHelper as ItemHelper = ItemHelper.getClass();