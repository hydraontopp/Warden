#bridge-file-version: #106
hide


tag @a[tag=wardenTrusted] remove BanCreative
tag @a[tag=wardenTrusted] remove BanCBE
tag @a[tag=wardenTrusted] remove BanBypass
tag @a[tag=wardenTrusted] remove Ban

#Global Bans
#execute @r[tag=PermBan] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§cis tools Global Banned"}]}
#kick @r[tag=PermBan] §¶§7[§cWarden§7]§r §¶ You are tools Global Banned! You may not join realms protected by tools.

#Autoban Creative/CBE
execute @a[m=c,tag=!wardenTrusted] ~~~ function tools/asset/creative_flag_asset

#Kick Messages
#execute @a[tag=BanCBE] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§cwas season banned for CBE exploits"}]}
#execute @a[scores={warn=3}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§cwas season banned for reaching 3 warnings"}]}
#execute @a[tag=illegalitemban] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§cwas season banned for illegal items"}]}


# The 1.17 ban messages are in tools/asset/ban_asset
#Restrict Player's Gameplay
title @s times 0 100 0
#execute @s[tag=!wardenTrusted] ~~~ execute @s[tag=PermBan] ~~~ function tools/asset/ban_asset
execute @s[tag=!wardenTrusted] ~~~ execute @s[tag=BanCBE] ~~~ function tools/asset/ban_asset
execute @s[tag=!wardenTrusted] ~~~ execute @s[tag=BanCreative] ~~~ function tools/asset/ban_asset
execute @s[tag=!wardenTrusted] ~~~ execute @s[tag=Ban] ~~~ function tools/asset/ban_asset
execute @s[tag=!wardenTrusted] ~~~ execute @s[tag=illegalitemban] ~~~ function tools/asset/ban_asset
execute @s[tag=!wardenTrusted] ~~~ execute @s[tag=BanFly] ~~~ function tools/asset/ban_asset
execute @s[tag=!wardenTrusted] ~~~ execute @s[tag=BanPhase] ~~~ function tools/asset/ban_asset
execute @s[tag=!wardenTrusted] ~~~ execute @s[scores={warn=3}] ~~~ function tools/asset/ban_asset
execute @s[tag=!wardenTrusted,scores={Ban=1}] ~~~ tag @s add Ban


execute @s[scores={BanCBE=1..}] ~~~ tag @s add BanCBE
execute @s[scores={IIB=1..}] ~~~ tag @s add illegalitemban
execute @s[scores={BanFly=1..}] ~~~ tag @s add BanFly
execute @s[scores={BanPhase=1..}] ~~~ tag @s add BanPhase
execute @s[scores={BanWarn=1..}] ~~~ tag @s add BanWarn

#AutoKick
#kick @a[scores={warn=3}] §¶§7[§cWarden§7]§r §¶ Season Banned - 3 Warnings Recieved
#kick @a[tag=illegalitemban] §¶§7[§cWarden§7]§r §¶ Season Banned - Illegal Items
#kick @a[tag=BanCBE] §¶§7[§cWarden§7]§r §¶ Season Banned - CBE
#kick @a[tag=BanBypass] §¶§7[§cWarden§7]§r §¶ Season Banned - Attempting Bypass
#kick @a[tag=Ban] §¶§7[§cWarden§7]§r §¶ Season Banned - Banned By Operator




#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
