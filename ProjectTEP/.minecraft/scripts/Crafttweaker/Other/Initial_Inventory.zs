/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 80000
import crafttweaker.item.IItemStack;
import mods.initialinventory.InvHandler;

val items as IItemStack[] = [
    <patchouli:guide_book>.withTag({"patchouli:book": "patchouli:tep_guide"}),
    <simpledifficulty:wool_helmet>, <simpledifficulty:wool_chestplate>,
    <simpledifficulty:wool_leggings>, <simpledifficulty:wool_boots>,
    <contenttweaker:medical_pack>*4, <botania:lexicon>.withTag({}),
    <minecraft:stone_shovel:120>,<immersiveengineering:tool:3>,
    <akashictome:tome>
];

for item in items {
    InvHandler.addStartingItem(item);
}