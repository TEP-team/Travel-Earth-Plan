/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntity;
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
    val entity as IEntity = event.throwable;
    val world as IWorld = entity.world;
    if (!world.remote && entity.definition.id == "minecraft:snowball") {
        val pos = entity.position3f;
        getRandomAndSpawnEntity(70, 73, world, pos, <minecraft:wheat_seeds>);
        getRandomAndSpawnEntity(73, 76, world, pos, <minecraft:pumpkin_seeds>);
        getRandomAndSpawnEntity(76, 79, world, pos, <minecraft:melon_seeds>);
        getRandomAndSpawnEntity(79, 82, world, pos, <minecraft:beetroot_seeds>);
        getRandomAndSpawnEntity(82, 84, world, pos, <immersiveengineering:seed>);
        getRandomAndSpawnEntity(84, 90, world, pos, <contenttweaker:wood_residue>);
        getRandomAndSpawnEntity(90, 95, world, pos, <minecraft:dye:15>);
        getRandomAndSpawnEntity(95, 100, world, pos, <minecraft:flint>);
    }
});