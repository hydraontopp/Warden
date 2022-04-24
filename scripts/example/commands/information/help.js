import { Server } from '../../../library/Minecraft.js';
import { tellrawStaff } from '../../../library/utils/prototype.js';
const registerInformation = {
    cancelMessage: true,
    name: 'help',
    staff: 'false',
    description: 'Get list of all the commands available or input an argument to get information about that specific command',
    usage: 'help [command name]',
    example: [
        'help',
        'help ping'
    ]
};

Server.command.register(registerInformation, (data, args) => {
    try {
        const sender = data.sender;
        const name = sender.getName();
        const cmdList = Server.command.getAll();
        const cmdstaff = Server.command.getAllStaff();

        const plrcmd = cmdList.join(', ');
        const stfcmd = cmdstaff.join(', ');


        console.warn(cmdList);
        //sender.tellraw(`§bCustom Command prefix§f: §a${Server.command.prefix}\n§bType §a${Server.command.prefix}help §f[command name] §bfor more information on that command!\n§bCustom Command List: §l§c${cmdList.join(', ')}`);
        if (!args[0]) {
            if (sender.hasTag('wardenTrusted')) { 
                return sender.tellraw(`§eCommands Prefix§f: §a${Server.command.prefix}\n§bType §a${Server.command.prefix}help §f[command name] §bfor more information on that command!\n§2Player Commands: §l§c${plrcmd} §r\n§4Staff Commands§l§c${stfcmd}`);
            } else {
                return sender.tellraw(`§eCommands Prefix§f: §a${Server.command.prefix}\n§bType §a${Server.command.prefix}help §f[command name] §bfor more information on that command!\n§bPlayer Commands: §l§c${plrcmd}`);
            }
        }
        const cmdInfo = Server.command.getRegistration(args[0]);
        if (!cmdInfo)
            return sender.tellraw("§cI couldn't find the command...");
        let string = `\n§cCommand§f: §a${Server.command.prefix}§l§c${cmdInfo.name}§r\n`;
        if (cmdInfo.aliases)
            string += `§cAliases§f: §c${cmdInfo.aliases.join('§r, ')}§r\n`;
        if (cmdInfo.description)
            string += `§cDescription§f: ${cmdInfo.description}\n`;
        if (cmdInfo.usage)
            string += `§cUsage§f: §a${Server.command.prefix}§f${cmdInfo.name} ${cmdInfo.usage}\n`;
        if (cmdInfo.example)
            string += `§cExample§f: §a${Server.command.prefix}§f${cmdInfo.example.join(`\n${Server.command.prefix}§f`)}`;
        return sender.tellraw(string);
    } catch (error) {
        console.warn(error, error.stack);
    }
});
