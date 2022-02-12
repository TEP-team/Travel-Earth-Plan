/*
    Author: Dark2932
    Flie: ExportHelper.zs
*/

#priority 1000000
#loader crafttweaker reloadableevents

zenClass ExportHelper {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;

    function printer(msg as string) {
        Logger.info(msg);
    }

}

global ExportHelper as ExportHelper = ExportHelper("Instanced");