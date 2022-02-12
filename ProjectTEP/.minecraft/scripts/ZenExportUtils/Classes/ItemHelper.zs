/*
    Author: Dark2932
    Flie: ItemHelper.zs
*/

#priority 1000000
#loader crafttweaker reloadableevents
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;

zenClass ItemHelper {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;

    function getItemID(item as IItemStack, isDetailed as bool) as string {
        val id = item.definition.id;
        val meta = item.metadata;
        return isDetailed ? (id ~ ":" ~ meta) : id;
    }

    function matchDye(item as IItemStack) as bool {
        return (this.getItemID(item, true) == this.getItemID(<minecraft:dye:0>, true));
    }

    function matchCurrent(player as IPlayer) as bool {
        val item = player.currentItem;
        return (!isNull(item) && this.matchDye(item));
    }

}

global ItemHelper as ItemHelper = ItemHelper("Instanced");