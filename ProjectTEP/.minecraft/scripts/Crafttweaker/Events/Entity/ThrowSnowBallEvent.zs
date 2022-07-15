/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.item.IItemStack;
import crafttweaker.util.Position3f;
import crafttweaker.world.IWorld;
import crafttweaker.event.ProjectileImpactThrowableEvent;

function setSnowDrop(item as IItemStack, num1 as int, num2 as int, world as IWorld, pos as Position3f) {
    val random = world.random.nextInt(1, 100);
    if (random >= num1 && random < num2) {
        world.spawnEntity(item.createEntityItem(world, pos));
    }
}

events.onProjectileImpactThrowable(function(event as ProjectileImpactThrowableEvent) {
    val entity = event.throwable;
    val world = entity.world;
    val pos = entity.position3f;
    if (!world.remote && entity.definition.id == "minecraft:snowball") {
        setSnowDrop(<contenttweaker:wood_residue>, 1, 30, world, pos);
        setSnowDrop(<minecraft:flint>, 31, 40, world, pos);
        setSnowDrop(<minecraft:string>, 41, 50, world, pos);
        setSnowDrop(<minecraft:clay_ball>, 51, 58, world, pos);
    }
});