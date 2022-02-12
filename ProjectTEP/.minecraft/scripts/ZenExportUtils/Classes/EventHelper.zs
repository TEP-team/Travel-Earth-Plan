/*
    Author: Dark2932
    Flie: EventHelper.zs
*/

#priority 1000000
#loader crafttweaker reloadableevents
import crafttweaker.player.IPlayer;
import crafttweaker.container.IContainer;

zenClass EventHelper {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;

    function ignoreServer(player as IPlayer) as bool {
        return player.world.remote;
    }

    function getContainerCondition(container as IContainer, type as string) as bool {
        val name = container.asString();
        if (type == "chest") return (name has "Chest");
        if (type == "player") return (name has "Player");
    }

}

global EventHelper as EventHelper = EventHelper("Instanced");