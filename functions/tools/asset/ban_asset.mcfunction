//This is not meant to be seen

#Ban Checks for stats and stuff
execute @s[tag=!wardenTrusted,tag=PermBan] ~~~ scoreboard players add @s PermBan 1
execute @s[tag=!wardenTrusted,tag=BanCBE] ~~~ scoreboard players add @s BanCBE 1
execute @s[tag=!wardenTrusted,tag=Ban] ~~~ scoreboard players add @s Ban 1
execute @s[tag=!wardenTrusted,tag=illegalitemban] ~~~ scoreboard players add @s IIB 1
execute @s[tag=!wardenTrusted,tag=BanFly] ~~~ scoreboard players add @s BanFly 1
execute @s[tag=!wardenTrusted,tag=BanPhase] ~~~ scoreboard players add @s BanPhase 1
execute @s[tag=!wardenTrusted,scores={warn=3}] ~~~ scoreboard players add @s BanWarn 1

#1.17 ban chat messages  (06/22/2021)
execute @s[scores={BanCBE=1..}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":"§b §¶§cwas banned due to CBE exploits"}]}
execute @s[scores={BanWarn=1..}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":"§b §¶§cwas banned due to Reaching 3 Warnings"}]}
execute @s[scores={PermBan=1..}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§cis tools Global Banned and cannot be unbanned"}]}
execute @s[scores={Ban=1..}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§cWas Banned by a OPERATOR"}]}
execute @s[scores={IIB=1..}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":"§b §¶§cwas banned due to Illegal Items"}]}
execute @s[scores={BanFly=1..}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":"§b §¶§cwas banned due to Fly Hacks"}]}
execute @s[scores={BanPhase=1..}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":"§b §¶§cwas banned due to Phase Hacks"}]}

execute @s[tag=!wardenTrusted,tag=PermBan] ~~~ function tools/asset/ban_gameplay
execute @s[tag=!wardenTrusted,tag=BanCBE] ~~~ function tools/asset/ban_gameplay
execute @s[tag=!wardenTrusted,tag=Ban] ~~~ function tools/asset/ban_gameplay
execute @s[tag=!wardenTrusted,tag=illegalitemban] ~~~ function tools/asset/ban_gameplay
execute @s[tag=!wardenTrusted,tag=BanFly] ~~~ function tools/asset/ban_gameplay
execute @s[tag=!wardenTrusted,tag=BanPhase] ~~~ function tools/asset/ban_gameplay
execute @s[tag=!wardenTrusted,scores={warn=3..}] ~~~ function tools/asset/ban_gameplay

event entity @s[tag=!wardenTrusted,scores={BanPhase=1..}] warden:ban_soft
event entity @s[tag=!wardenTrusted,scores={BanFly=1..}] warden:ban_soft
event entity @s[tag=!wardenTrusted,scores={IIB=1..}] warden:ban_soft
event entity @s[tag=!wardenTrusted,scores={PermBan=1..}] warden:ban_soft
event entity @s[tag=!wardenTrusted,scores={BanWarn=1..}] warden:ban_soft
event entity @s[tag=!wardenTrusted,scores={BanCBE=1..}] warden:ban_soft
event entity @s[tag=!wardenTrusted,scores={warn=3..}] warden:ban_soft

#Prevents overflow from ban checks
execute @s[scores={PermBan=4}] ~~~ scoreboard players set @s PermBan 3
execute @s[scores={BanCBE=4}] ~~~ scoreboard players set @s BanCBE 3
execute @s[scores={Ban=4}] ~~~ scoreboard players set @s Ban 3
execute @s[scores={IIB=4}] ~~~ scoreboard players set @s IIB 3
execute @s[scores={BanFly=4}] ~~~ scoreboard players set @s BanFly 3
execute @s[scores={BanPhase=4}] ~~~ scoreboard players set @s BanPhase 3
execute @s[scores={BanWarn=4}] ~~~ scoreboard players set @s BanWarn 3
