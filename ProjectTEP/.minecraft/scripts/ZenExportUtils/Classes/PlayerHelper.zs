/*
    Author: Dark2932
    Flie: PlayerHelper.zs
*/

#priority 1000000
#loader crafttweaker reloadableevents
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;

zenClass PlayerHelper {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;

    function isCreative(player as IPlayer) as bool {
        return player.creative;
    }

    function getCurrent(player as IPlayer) as IItemStack {
        return player.currentItem;
    }

    function getPosture(player as IPlayer, type as string) as bool {
        if (type == "riding") return player.isRiding;
        if (type == "silent") return player.isSilent;
        if (type == "sneaking") return player.isSneaking;
        if (type == "sprinting") return player.isSprinting;
    }

}

global PlayerHelper as PlayerHelper = PlayerHelper("Instanced");