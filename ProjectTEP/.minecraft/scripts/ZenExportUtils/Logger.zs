/*
    Author: Dark2932
    Flie: Logger.zs
*/

#priority 1000000

zenClass Logger {

    val ID = "[ZenExportUtils]" ~ " ";

    function printer(msg as string) as string {
        print(ID ~ msg);
    }

    function info(msg as string) {
        logger.logInfo(ID ~ msg);
    }

    function warning(msg as string) {
        logger.logWarning(ID ~ msg);
    }

    function error(msg as string) {
        logger.logError(ID ~ msg);
    }

    function getClass() as Logger {
        return this;
    }

}

global Logger as Logger = Logger.getClass();