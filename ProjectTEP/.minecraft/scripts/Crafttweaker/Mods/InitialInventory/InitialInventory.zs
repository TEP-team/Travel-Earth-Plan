/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
#norun
import crafttweaker.item.IItemStack;
import mods.initialinventory.InvHandler;

val items as IItemStack[] = [
    <patchouli:guide_book>.withTag({"patchouli:book": "patchouli:tep_guide"}),
    <patchouli:guide_book>.withTag({"patchouli:book": "pneumaticcraft:book"}),
    <harvestcraft:crispyricepuffbarsitem>*4, <harvestcraft:energydrinkitem>*4,
    <botania:lexicon>.withTag({}), <contenttweaker:medical_pack>*4,
    <immersiveengineering:tool:3>, <akashictome:tome>, <xnet:xnet_manual>,
    <simpledifficulty:wool_helmet>, <simpledifficulty:wool_chestplate>,
    <simpledifficulty:wool_leggings>, <simpledifficulty:wool_boots>,
    <contenttweaker:tp_gem>*4, <integrateddynamics:on_the_dynamics_of_integration>
];

for item in items {
    InvHandler.addStartingItem(item);
}