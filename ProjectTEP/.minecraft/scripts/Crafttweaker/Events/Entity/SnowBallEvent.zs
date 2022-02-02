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

function getRandomAndSpawnEntity(num1 as int, num2 as int, world as IWorld, pos as Position3f, item as IItemStack) {
    val random = world.random.nextInt(1, 100);
    if (random >= num1 && random < num2) {
        world.spawnEntity(item.createEntityItem(world, pos));
    }
}

events.onProjectileImpactThrowable(function(event as ProjectileImpactThrowableEvent) {
    val entity = event.throwable;
    val world = entity.world;
    if (!world.remote && entity.definition.id == "minecraft:snowball") {
        val pos = entity.position3f;
        getRandomAndSpawnEntity(1, 6, world, pos, <contenttweaker:wood_residue>);
        getRandomAndSpawnEntity(6, 10, world, pos, <minecraft:flint>);
        getRandomAndSpawnEntity(10, 12, world, pos, <minecraft:clay_ball>);
        getRandomAndSpawnEntity(12, 15, world, pos, <minecraft:dye:15>);
        getRandomAndSpawnEntity(15, 18, world, pos, <minecraft:string>);
        getRandomAndSpawnEntity(18, 19, world, pos, <minecraft:wheat_seeds>);
        getRandomAndSpawnEntity(19, 20, world, pos, <minecraft:melon_seeds>);
        getRandomAndSpawnEntity(20, 21, world, pos, <minecraft:pumpkin_seeds>);
        getRandomAndSpawnEntity(21, 22, world, pos, <minecraft:beetroot_seeds>);
        getRandomAndSpawnEntity(22, 23, world, pos, <immersiveengineering:seed>);
    }
});