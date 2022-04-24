execute @s[tag=wardenTrusted] ~~~ tellraw @a {"rawtext":[{"text":"§e"},{"selector":"@s"},{"text":" left the realm"}]}

execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► You must be staff to use this command!"}]}
execute @s[tag=!wardenTrusted] ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ playsound note.pling @a ~ ~ ~
scoreboard players set @s lstcmd 15
