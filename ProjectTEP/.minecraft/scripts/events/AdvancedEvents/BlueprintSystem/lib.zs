/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50002
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import crafttweaker.data.IData;
import crafttweaker.text.ITextComponent.fromTranslation;
import crafttweaker.event.PlayerRightClickItemEvent;

//get the data of used blueprint
function bluePrintData(bluePrint as IItemStack, nameAsBlueprint as string) {
    events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent) {
        var player as IPlayer = event.player;
        var world as IWorld = player.world;
        if (!world.remote && !player.isFake()) {
            if (bluePrint.matches(event.item)) {
                //Thanks to youyihj for providing this method for me.
                var blueprint as IData = IData.createEmptyMutableDataMap();
                blueprint.memberSet(nameAsBlueprint, 1);
                player.update({PlayerPersisted: {blueprintData: blueprint}});
                player.sendRichTextMessage(fromTranslation("blueprint.tep.getsuccess"));
                event.item.mutable().shrink(1);
            }
        }
    });
}

//getting a item's unlocalized name and return this unlocalized name
function getItemName(object as IItemStack) as string {
    val unlocalizedName as string = object.definition.name;
    return unlocalizedName;
}

//Recipe Function
function dataChecker(nameAsBlueprint as string, item as IItemStack, inputs as IIngredient[][]) {
    var recipeName as string = getItemName(item);
    recipes.remove(item);
    recipes.addShaped(recipeName,item,inputs,
        function (out,ins,cInfo) {
            var persisted as IData = cInfo.player.data.PlayerPersisted;
            if (!isNull(persisted) && persisted has "blueprintData") {
                var dataBlueprint as IData = persisted.blueprintData;
                var bpData as IData = dataBlueprint.memberGet(nameAsBlueprint); 
                if (!isNull(bpData) && bpData.asInt() == 1) {
                    return out;
                }
            }   return null;
        },  null
    );
}