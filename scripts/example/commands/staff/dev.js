import { Server } from '../../../library/Minecraft.js';
import { tellrawStaff, tellrawServer, queryTopSolid } from '../../../library/utils/prototype.js';
import { world, Location } from 'mojang-minecraft';
const overworld = world.getDimension('overworld');
const registerInformation = {
    cancelMessage: true,
    name: 'dev',
    private: 'true',
    description: 'developer commands',
    usage: '[ yeet ]',
    example: [
        'dev init @player',
        'dev init',
        'dev features',
        'dev version'
    ]
};
Server.command.register(registerInformation, (chatmsg, args) => {
    try {
        
        let input = args.join(' ').replace('init ', '').replace('@', '').replace(/"/g, '');
        let playerfound = [...world.getPlayers()].find(player => player.getName() === input);
        //const playername = playerfound.getName();
        const { sender } = chatmsg;
        const name = sender.getName();
        console.warn(sender.queryTopSolid());

        let devinit = ['init'];
        let devfeatures = ['features', 'testing'];
        let version = ['version', 'build'];
        
        if (sender.hasTag('wardenTrusted')) {
            if (devinit.includes(args[0])) {
                if(args[1]) {
                    if (!playerfound) {
                        return sender.tellraw(`§¶§7[§cWarden§7]§r §¶ §c§lError 7: No player by that name`); 
                    }
                    else { 
                        let playername = playerfound.getName();
                        sender.tellraw(`§¶§7[§cWarden§7]§r §¶ §d§l${playername}'s §binit was reset by §d${name}`);
                        sender.runCommand(`execute "${playername}" ~~~ function tools/asset/warden-init-asset`); 
                    }
                }
                else { sender.runCommand(`function tools/test/init`); }
            }  else if (devfeatures.includes(args[0])) {
                sender.runCommand(`function tools/test/enable-test-features`);
            }   else if (version.includes(args[0])) {
                sender.runCommand(`function tools/asset/version`);
            } else {
                return sender.tellraw(`§¶§c§lUAC ► §cNo args given`);
            }
        } else {
            return sender.tellraw(`§¶§c§lUAC ► §c§lThis command is meant for staff only`);
        }
    } catch (error) {
        console.warn(error, error.stack);
    }
});
