/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.event.PlayerInteractBlockEvent;

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    val player = event.player;
    val world = player.world;
    val block = event.block;
    val item = event.item;
    val pos = event.position;
    if (!player.isFake() && player.isSneaking) {
        val machine as string[] = [
            "fluid_processor", "packer", "compiler",
            "energy_dismantler", "gas_centrifuger",
            "mixin_tank", "mana_convertor", "mana_altar",
            "reactor", "laser", "heaven_altar"
        ];
        if (block.definition.id == <modularmachinery:blockcontroller>.asBlock().definition.id) {
            for machine in machine {
                if (<modularmachinery:itemblueprint>.matches(item) && item.tag.dynamicmachine == "modularmachinery:" ~ machine) {
                    world.setBlockState(itemUtils.getItem("modularcontroller:" ~ machine ~ "_controller").asBlock().definition.defaultState, pos);
                }
            }
        }
    }
});


