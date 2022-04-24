execute @s[tag=wardenTrusted] ~~~ function tools/asset/version
execute @s[tag=wardenTrusted] ~~~ function tools/asset/discord
execute @s[tag=wardenTrusted] ~~~ function tools/asset/createdby
execute @s[tag=wardenTrusted] ~~~ function tools/asset/patreon
execute @s[tag=wardenTrusted] ~~~ function tools/asset/credit_asset
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► You must be staff to use this command!"}]}
scoreboard players set @s lstcmd 11
