/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 100000
#loader contenttweaker
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPart;

zenClass MaterialPartUtils {

    zenConstructor(arg as string) {
        this.id = arg;
    }
    
    val id as string;

    function registeMaterial(name as string, color as int) as Material {
        val builder = MaterialSystem.getMaterialBuilder();
        return builder.setName(name).setColor(color).build();
    }

    function registeMaterialPart(name as string, name1 as string) as MaterialPart {
        return MaterialSystem.getMaterial(name).registerPart(name1);
    }

    function addData(object as MaterialPart, category as string, value as string) {
        object.getData().addDataValue(category, value);
    }
}

/*
//ore_dusts
global dirtydusts as IItemStack[] = [<mekanism:dirtydust>,<mekanism:dirtydust:1>,<mekanism:dirtydust:2>,<mekanism:dirtydust:3>,<mekanism:dirtydust:4>];
global dusts as IItemStack[] = [<mekanism:dust>,<mekanism:dust:1>,<mekanism:dust:2>,<mekanism:dust:3>,<mekanism:dust:4>];
global ore as IItemStack[] = [<minecraft:iron_ore>,<minecraft:gold_ore>,<mekanism:oreblock>,<mekanism:oreblock:1>,<mekanism:oreblock:2>];
*/