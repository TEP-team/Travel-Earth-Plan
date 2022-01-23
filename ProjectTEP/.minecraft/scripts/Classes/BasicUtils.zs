/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 100000
import crafttweaker.item.IItemStack;

zenClass BasicUtils {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;

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
}