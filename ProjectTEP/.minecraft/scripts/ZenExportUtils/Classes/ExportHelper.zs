/*
    Author: Dark2932
    Flie: ExportHelper.zs
*/

#priority 999999

zenClass ExportHelper {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;
    val ID = "[ZenExportUtils]";

    function printer(msg as string) {
        print(ID ~ msg);
    }

}

global ExportHelper as ExportHelper = ExportHelper("Instanced");