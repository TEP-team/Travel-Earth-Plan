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
        var m = 0 as int;
        var Items = [[],[],[],[],[],[],[],[],[],[],[]] as IItemStack[][];
        for i in 0 to 11 {
            var item = [] as IItemStack[];
            for k in 0 to 9 {
                item += <contenttweaker:material_part>.definition.makeStack(m);
                m += 11;
            }
            Items[i] = item;
            m = i + 1;
        }
        return Items;
    }

    function getAllOre() as IItemStack[] {
        val ore as IItemStack[] = [
            <immersiveengineering:ore:3>, <contenttweaker:sub_block_holder_0:3>,
            <contenttweaker:sub_block_holder_0:1>, <mekanism:oreblock:2>,
            <immersiveengineering:ore:2>, <contenttweaker:sub_block_holder_0:4>,
            <minecraft:iron_ore>, <immersiveengineering:ore:4>,
            <mekanism:oreblock:1>, <minecraft:gold_ore>, <mekanism:oreblock:1>
        ];
        return ore;
    }
    
}

global BasicUtils as BasicUtils = BasicUtils("Instanced");