execute @s ~~~ tellraw @s {"rawtext":[{"selector":"@s"},{"text":"§¶§bis now a operator"}]}

execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ playsound note.pling @a ~ ~ ~
scoreboard players set @s lstcmd 2
