/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 40000

var rs = <ore:dustRedstone>;
var iron = <ore:ingotIron>;

recipes.remove(<compactmachines3:psd>);
recipes.addShaped(<compactmachines3:psd>,
    [[iron,<ore:paneGlass>,iron],
	 [rs,<contenttweaker:tp_gem>,rs],
	 [iron,iron,iron]]);