execute @s[tag=wardenTrusted] ~~~ scoreboard players add icmtoggledummy ICM 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @a ICM = icmtoggledummy ICM

#turn on
execute @s[tag=wardenTrusted,scores={ICM=1}] ~~~ scoreboard players set icmtoggledummy icmtoggle 1
execute @s[tag=wardenTrusted,scores={ICM=1}] ~~~ scoreboard players operation @a icmtoggle = icmtoggledummy icmtoggle
execute @s[tag=wardenTrusted,scores={ICM=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Player Commands §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @s[tag=wardenTrusted,scores={has_gt=0,ICM=1}] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Gametest Features §7: §cNot Enabled §7|| §cPlayer Chat commands will not work"}]}
#turn off
execute @s[tag=wardenTrusted,scores={ICM=2}] ~~~ scoreboard players set icmtoggledummy icmtoggle 0
execute @s[tag=wardenTrusted,scores={ICM=2}] ~~~ scoreboard players operation @a icmtoggle = icmtoggledummy icmtoggle
execute @s[tag=wardenTrusted,scores={ICM=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Player Commands §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={ICM=2}] ~~~ scoreboard players set icmtoggledummy ICM 0
#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 27