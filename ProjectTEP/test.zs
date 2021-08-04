import crafttweaker.item.IItemStack; //导包 IItemStack是一个物品. [可不要]

var iron as IItemStack = <ore:ingotIron>; //给铁锭(矿词)赋值. [as IItemStack在上面导包删去时需要移除，这个可以指定物品类型]
var stone as IItemStack = <minecraft:stone>; //给石头赋值，其余一样
var dirt as IItemStack = <minecraft:dirt>; //给泥土赋值

repices.remove(stone); //删除石头的 "所有" 配方，如果写在添加的合成表后，那么添加的也会被删除
repices.addShaped(stone,
    [[null,null,null],
     [null,iron,null],
     [null,null,null]]); //添加一个有序合成，即为工作台九宫格
recipes.addShapeless(stone, 
    [dirt,dirt]); //添加一个无序合成，物品不得超过9个