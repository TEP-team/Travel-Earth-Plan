/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70003
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import mods.contenttweaker.MaterialSystem as System;
import mods.contenttweaker.Material;
import mods.contenttweaker.Part;
import mods.contenttweaker.MaterialPart;

zenClass MaterialUtils {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    function getMaterial(name as string) as Material {
        return System.getMaterial(name);
    }

    function getPart(name as string) as Part {
        return System.getPart(name);
    }

    function registeMaterialPart(name1 as string, name2 as string) {
        this.getPart(name1).registerToMaterial(this.getMaterial(name2));
    }

    function getItem() as IItemStack {
        var Items as IItemStack[] = [];
        for MaterialPart in System.getMaterialParts() {
            Items += MaterialPart.getItemStack();
        }
        return Items;
    }
}


/*
//def
global def1 as IItemDefinition = <contenttweaker:material_part>.definition;
global def2 as IItemDefinition = <contenttweaker:sub_block_holder_0>.definition;

//ore_dusts
global dirtydusts as IItemStack[] = [<mekanism:dirtydust>,<mekanism:dirtydust:1>,<mekanism:dirtydust:2>,<mekanism:dirtydust:3>,<mekanism:dirtydust:4>];
global dusts as IItemStack[] = [<mekanism:dust>,<mekanism:dust:1>,<mekanism:dust:2>,<mekanism:dust:3>,<mekanism:dust:4>];
global ore as IItemStack[] = [<minecraft:iron_ore>,<minecraft:gold_ore>,<mekanism:oreblock>,<mekanism:oreblock:1>,<mekanism:oreblock:2>];
*/