/*
    Author: Dark2932
    Flie: ExportHelper.zs
*/

#priority 999999

zenClass ExportHelper {

    val ID = "[ZenExportUtils]";

    function printer(msg as string) {
        print(ID ~ msg);
    }

    function getClass() as ExportHelper {
        return this;
    }

}

global ExportHelper as ExportHelper = ExportHelper.getClass();