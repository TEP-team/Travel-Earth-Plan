/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 100000
#loader crafttweaker reloadableevents
import crafttweaker.item.IItemStack;

zenClass BasicUtils {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;
    
    function addTooltip(key as string, item as IItemStack) {
        item.addTooltip(game.localize(key));
    }

    function getAllMaterialPartItem() as IItemStack[][] {
        var meta as int = 0;
        var Items = [[],[],[],[],[],[],[],[],[],[],[]] as IItemStack[][];
        for part in 0 to 11 {
            var item = [] as IItemStack[];
            for material in 0 to 9 {

                item += <contenttweaker:material_part>.definition.makeStack(meta);
                meta += 11;

                //fix meta
                /*
                if (material == 1) {
                    meta += 2;
                }
                if (material == 2) {
                    meta += 2;
                }
                if (material == 5) {
                    meta += 2;
                }
                */

            }
            Items[part] = item;
            meta = part + 1;
        }

        //overrides
        Items[0] = [<immersiveengineering:metal:3>,<contenttweaker:material_part:11>,<contenttweaker:material_part:22>,<mekanism:ingot:6>,<immersiveengineering:metal:2>,<contenttweaker:material_part:55>,<minecraft:iron_ingot>,<immersiveengineering:metal:4>,<immersiveengineering:metal>];
        
        return Items;
    }

    function getAllOre() as IItemStack[] {
        val ore as IItemStack[] = [
            <immersiveengineering:ore:3>, <contenttweaker:sub_block_holder_0:3>,
            <contenttweaker:sub_block_holder_0:1>, <mekanism:oreblock:2>,
            <immersiveengineering:ore:2>, <contenttweaker:sub_block_holder_0:4>,
            <minecraft:iron_ore>, <immersiveengineering:ore:4>, <mekanism:oreblock:1>,
            <minecraft:gold_ore>, <mekanism:oreblock>
        ];
        return ore;
    }
    
}

global BasicUtils as BasicUtils = BasicUtils("Instanced");