/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.event.ProjectileImpactThrowableEvent;

events.onProjectileImpactThrowable(function(event as ProjectileImpactThrowableEvent) {
    val entity = event.throwable;
    val world = entity.world;
    val pos = entity.position3f;
    if (!world.remote && entity.definition.id == "minecraft:egg") {
        world.performExplosion(entity, pos.x, pos.y, pos.z, 5.6f, false, false);
    }
});