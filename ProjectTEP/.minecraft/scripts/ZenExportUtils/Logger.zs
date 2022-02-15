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

    function info(msg as string) {
        logger.logInfo("[ZenExportUtils] " ~ msg);
    }

    function warning(msg as string) {
        logger.logWarning(" " ~ msg);
    }

    function error(msg as string) {
        logger.logError(" " ~ msg);
    }

}

global Logger as Logger = Logger("Instanced");