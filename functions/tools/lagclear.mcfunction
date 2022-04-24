#bridge-file-version: #6
execute @s[tag=wardenTrusted] ~~~ function tools/packages/autoclear-manual
execute @s[tag=wardenTrusted] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§bcleared entities manually"}]}
playsound random.click @a ~~~ 6 1 1

execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► You must be staff to use this command!"}]}
execute @s[tag=!wardenTrusted] ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ playsound note.pling @a ~ ~ ~
scoreboard players set @s lstcmd 15
