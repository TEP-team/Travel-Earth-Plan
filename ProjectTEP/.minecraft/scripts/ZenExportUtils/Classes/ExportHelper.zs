/*
    Author: Dark2932
    Flie: ExportHelper.zs
*/

#priority 999999

zenClass ExportHelper {

    function getClass() as ExportHelper {
        return this;
    }

}

global ExportHelper as ExportHelper = ExportHelper.getClass();