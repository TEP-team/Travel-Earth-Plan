/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 100000
import mods.dropt.Dropt;

zenClass DroptUtils {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    val id as string;

}