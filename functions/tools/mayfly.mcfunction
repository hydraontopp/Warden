execute @s[tag=!wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§bHas been whitelisted from Anti-Fly Module"}]}
execute @s[tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§bdoes not need this because they are staff."}]}

execute @s[tag=!wardenTrusted] ~~~  scoreboard players set @s 2KK001 725
scoreboard players set @s lstcmd 16
