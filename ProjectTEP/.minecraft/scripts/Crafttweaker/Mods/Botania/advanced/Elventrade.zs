/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.botania.ElvenTrade;

ElvenTrade.addRecipe([<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:heaven_altar"})], [<contenttweaker:papers>, <contenttweaker:shinystar_ingot>*4]);