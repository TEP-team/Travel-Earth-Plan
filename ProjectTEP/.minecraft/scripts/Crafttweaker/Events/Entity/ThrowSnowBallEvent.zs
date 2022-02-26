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

val map as int[][IItemStack] = {
    <minecraft:clay_ball> : [1, 2],
    <minecraft:flint> : [2, 6],
    <contenttweaker:wood_residue> : [6, 16],
    <minecraft:dye:15> : [16, 18],
    <minecraft:string> : [18, 20],
    <minecraft:wheat_seeds> : [20, 21],
    <minecraft:melon_seeds> : [21, 22],
    <minecraft:pumpkin_seeds> : [22, 23],
    <minecraft:beetroot_seeds> : [24, 25],
    <immersiveengineering:seed> : [25, 26],
};

events.onProjectileImpactThrowable(function(event as ProjectileImpactThrowableEvent) {
    val entity = event.throwable;
    val world = entity.world;
    if (!world.remote && entity.definition.id == "minecraft:snowball") {
        val pos = entity.position3f;
        val random = world.random.nextInt(1, 65);
        for item, range in map {
            if (random >= range[0] && random < range[1]) {
                world.spawnEntity(item.createEntityItem(world, pos));
            }
        }
    }
});