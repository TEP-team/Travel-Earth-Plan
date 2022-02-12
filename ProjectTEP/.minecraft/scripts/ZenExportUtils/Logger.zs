/*
    Author: Dark2932
    Flie: Logger.zs
*/

#priority 1000001
#loader crafttweaker reloadableevents

zenClass Logger {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;
    val ID as string = "[ZenExportUtils]";

    function info(msg as string) {
        logger.logInfo(ID ~ " " ~ msg);
    }

    function warning(msg as string) {
        logger.logWarning(ID ~ " " ~ msg);
    }

    function error(msg as string) {
        logger.logError(ID ~ " " ~ msg);
    }

}

global Logger as Logger = Logger("Instanced");