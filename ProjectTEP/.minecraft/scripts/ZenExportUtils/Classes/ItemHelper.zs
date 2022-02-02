/*
    Author: Dark2932
    Flie: ItemHelper.zs
*/

#priority 999999
import crafttweaker.item.IItemStack;

zenClass ItemHelper {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;

    function getItemID(item as IItemStack) as string {
        val id = item.definition.id;
        val meta = item.metadata;
        return (meta == 0) ? id : (id ~ ":" ~ meta);
    }

}

global ItemHelper as ItemHelper = ItemHelper("Instanced");