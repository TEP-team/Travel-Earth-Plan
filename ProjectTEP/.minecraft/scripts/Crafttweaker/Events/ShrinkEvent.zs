/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.item.IItemStack;
import crafttweaker.event.PlayerTickEvent;

function itemShrinker(Item as IItemStack[]) {
    events.onPlayerTick(function(event as PlayerTickEvent) {
        val player = event.player;
        if (!player.world.remote && !player.isFake()) {
            var pdata = player.data;
            if (pdata has "shrink") {
                val item = player.currentItem;
                var shrink = pdata.memberGet("shrink").asInt();
                if (!isNull(item) && shrink == 1) {
                    val items as IItemStack[] = Item;
                    for Items in items {
                        if (Items.matches(item)) {
                            item.mutable().shrink(1);
                            player.update(pdata + {"shrink" : 0});
                        }
                    }
                }
            }
        }
    });
}

itemShrinker([<contenttweaker:medical_bandage>, <contenttweaker:medical_pack>, <contenttweaker:medical_splint>, <contenttweaker:medical_metal_splint>]);