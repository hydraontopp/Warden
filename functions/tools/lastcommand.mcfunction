execute @s[tag=wardenTrusted] ~~~ playsound note.pling @s ~ ~ ~
execute @s[tag=!wardenTrusted] ~~~ playsound note.bass @s ~ ~ ~
execute @p[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §bYou must be staff to do this command. The tag for staff is §6warden-Opped"}]}

execute @s[tag=wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §b`/function tools/lastcommand` will not be recorded in the command history"}]}
execute @s[tag=wardenTrusted] ~~~ function tools/asset/last_command_check_asset
