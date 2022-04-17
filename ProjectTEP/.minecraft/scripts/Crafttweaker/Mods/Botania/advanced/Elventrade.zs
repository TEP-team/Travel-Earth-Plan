/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.botania.ElvenTrade;

ElvenTrade.addRecipe([<contenttweaker:gc_singlechip>, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:gas_centrifuger"})], [<contenttweaker:singlechip>, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:gas_centrifuger"})]);
ElvenTrade.addRecipe([<contenttweaker:ft_singlechip>, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:reactor"})], [<contenttweaker:singlechip>, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:reactor"})]);