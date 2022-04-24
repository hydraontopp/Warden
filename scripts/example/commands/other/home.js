import { Server } from '../../../library/Minecraft.js';
import { tellrawStaff, content } from '../../../library/utils/prototype.js';
const registerInformation = {
    cancelMessage: true,
    name: 'home',
    staff: 'false',
    description: 'Use this command to list/set/remove/warp to home',
    usage: '<list | set | remove | warp> [home name]',
    example: [
        'home list',
        'home set <homeName>',
        'home set <"home name">',
        'home remove <homeName>',
        'home remove <"home name">',
        'home warp <homeName>',
        'home warp <"home name">',
    ]
};
Server.command.register(registerInformation, (chatmsg, args) => {
    try {

        content.warn({ args });
        const { sender } = chatmsg;
        const name = sender.getName();
        const tags = sender.getTags();
        const coordFormat = /(?<=[x-zX-Z]: )(-\d+|\d+)/g;
        const homeName = args[1];
        const homeRegex = new RegExp(`\\$\\(Home{Home-Name: ${homeName}, X: (-\\d+|\\d+), Y: (-\\d+|\\d+), Z: (-\\d+|\\d+)(.*)}\\)`);
        const findHomeNames = /(?<=\$\(Home{Home-Name: ).+?(?=, X: (-\d+|\d+), Y: (-\d+|\d+), Z: (-\d+|\d+)}\))/g;
        const findXYZ = `${tags.toString().match(homeRegex)}`.match(coordFormat);
        const data = tags.toString();
        let listOptions = ['list', 'all'];
        let setOptions = ['set', 'add'];
        let removeOptions = ['remove', 'unadd'];
        let warpOptions = ['warp', 'tp'];
        if (sender.scoreTest('icmtoggle') === 0) {
            return sender.tellraw(`§¶§7[§cWarden§7]§r §¶ §c§lThe Realm Owner currently has Player Commands Disabled`);
        } else if (sender.scoreTest('in_combat') === 1) {
            return sender.tellraw(`§¶§7[§cWarden§7]§r §¶ §6Home §cunavailable §bwhile in combat`);
        } else if (sender.scoreTest('tp_cooldown') != 0) {
            return sender.tellraw(`§¶§7[§cWarden§7]§r §¶ §6Home §cunavailable §bwhile warp commands are in cooldown. Please wait 40 seconds.`);
        } else if (sender.scoreTest('icmtoggle') === 1) {

            if (!args.length || listOptions.includes(args[0])) {
                const allHomes = data.match(findHomeNames);
                return sender.tellraw(`${allHomes ? `§l§¶§7[§cWarden§7]§r §¶ §6Homes §7: §b§l${allHomes.length}\n§¶§7[§cWarden§7]§r §¶ §6Home Names §7: §b§l${allHomes.join('§b§l, §b§l')}\n§¶§cUsage ► §bUAC.home §7[§bset §7: §bremove §7: §bwarp] §7{§6home name§7}` : '§¶§7[§cWarden§7]§r §¶ §c§lNo Homes Set\n§¶§cUsage ► §bUAC.home §7[§bset §7: §bremove §7: §bwarp] §7{§6home name§7}'}`);
            }
            else if (setOptions.includes(args[0])) {
                if (!args[1])
                    return sender.tellraw('§¶§7[§cWarden§7]§r §¶ §cPlease type a UNIQUE home name to set!');
                if (homeName.match(coordFormat))
                    return sender.tellraw('§¶§7[§cWarden§7]§r §¶ §cYou may not indentify your home name in a coordinate format!');
                if (data.match(homeRegex))
                    return sender.tellraw('§¶§7[§cWarden§7]§r §¶ §cYou already have a home set with that name!');
                sender.addTag(`$(Home{Home-Name: ${homeName}, X: ${Math.trunc(sender.location.x)}, Y: ${Math.trunc(sender.location.y)}, Z: ${Math.trunc(sender.location.z)}})`);
                sender.runCommand(`playsound note.pling @s ~ ~ ~`);
                tellrawStaff(`§¶§7[§cWarden§7]§r §¶ §d${name} §bhas set their §e${homeName} §blocation`);
                return sender.tellraw(`§¶§7[§cWarden§7]§r §¶ §bYou have set a home with the name §a${homeName} §bat§r: §a${Math.trunc(sender.location.x)}§r, §a${Math.trunc(sender.location.y)}§r, §a${Math.trunc(sender.location.z)}`);
            }
            else if (removeOptions.includes(args[0])) {
                if (!args[1])
                    return sender.tellraw('§¶§7[§cWarden§7]§r §¶ §cPlease type a home name to remove!');
                if (!data.match(homeRegex))
                    return sender.tellraw("§¶§7[§cWarden§7]§r §¶ §cYou don't have a home with that name!");
                else {
                    sender.removeTag(`$(Home{Home-Name: ${homeName}, X: ${findXYZ[0]}, Y: ${findXYZ[1]}, Z: ${findXYZ[2]}})`);
                    return sender.tellraw(`§¶§7[§cWarden§7]§r §¶ §bSuccessfully removed home with the name §a${homeName} §bat §a${findXYZ[0]}§r, §a${findXYZ[1]}§r, §a${findXYZ[2]}`);
                };
            }
            else if (warpOptions.includes(args[0])) {
                if (!args[1])
                    return sender.tellraw('§¶§7[§cWarden§7]§r §¶ §cPlease type a home name to warp to!');
                if (!data.match(homeRegex))
                    return sender.tellraw("§¶§7[§cWarden§7]§r §¶ §cYou don't have a home with that name!");
                sender.runCommand(`tp @s ${findXYZ[0]} ${findXYZ[1]} ${findXYZ[2]}`);
                sender.runCommand(`scoreboard players set @s tp_cooldown 900`);
                sender.runCommand(`function particle/nether_poof`);
                tellrawStaff(`§¶§7[§cWarden§7]§r §¶ §d${name} §bwarped to their §e${homeName} §blocation`);
                return sender.tellraw(`§¶§7[§cWarden§7]§r §¶ §bYou have been teleported to §a${args[1]} §bat §a${findXYZ[0]}§r, §a${findXYZ[1]}§r, §a${findXYZ[2]}`);
            }
            else
                return sender.tellraw("§¶§7[§cWarden§7]§r §¶ §6USAGE §7: §bUAC.home <list | set | remove | warp> [home name]");
        }
    } catch (error) {
        console.warn(error, error.stack);
    }
});
