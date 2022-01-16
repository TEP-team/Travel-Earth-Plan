/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 100000
#loader contenttweaker
import crafttweaker.item.IItemStack;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Part;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.MaterialPartData;

zenClass MaterialPartUtils {

    zenConstructor(arg as string) {
        this.id = arg;
    }
    
    val id as string;

    function getMaterial(name as string) as Material {
        return MaterialSystem.getMaterial(name);
    }

    function getPart(name as string) as Part {
        return MaterialSystem.getPart(name);
    }

    function getMaretialPart(name as string) as MaterialPart {
        return MaterialSystem.getMaterialPart(name);
    }

    function getMaretialPartData(name as string) as MaterialPartData {
        return this.getMaretialPart(name).getData();
    }

    function registeMaterial(name as string, color as int) as Material {
        var builder = MaterialSystem.getMaterialBuilder();
        return builder.setName(name).setColor(color).build();
    }

    function registeMaterialPart(name as string, name1 as string) as MaterialPart {
        return this.getMaterial(name).registerPart(name1);
    }

    function addData(value as MaterialPart, key as string, key1 as string) {
        value.getData().addDataValue(key, key1);
    }

    function getItemStack() as IItemStack[] {
        var Items = [] as IItemStack[];
        for name, materialPart in MaterialSystem.getMaterialParts() {
            Items += materialPart.getItemStack();
        }
        return Items;
    }

    function getConditionalItems(name as string) as IItemStack[] {
        var Items = [] as IItemStack[];
        for items in this.getItemStack() {
            if (items.name has name) {
                Items += items;
            }
        }
        return Items;
    }
}

/*
//ore_dusts
global dirtydusts as IItemStack[] = [<mekanism:dirtydust>,<mekanism:dirtydust:1>,<mekanism:dirtydust:2>,<mekanism:dirtydust:3>,<mekanism:dirtydust:4>];
global dusts as IItemStack[] = [<mekanism:dust>,<mekanism:dust:1>,<mekanism:dust:2>,<mekanism:dust:3>,<mekanism:dust:4>];
global ore as IItemStack[] = [<minecraft:iron_ore>,<minecraft:gold_ore>,<mekanism:oreblock>,<mekanism:oreblock:1>,<mekanism:oreblock:2>];
*/