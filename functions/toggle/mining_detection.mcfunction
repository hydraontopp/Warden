execute @s[tag=wardenTrusted] ~~~ scoreboard players add mdmtoggledummy MDM 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @a MDM = mdmtoggledummy MDM

#turn on
execute @s[tag=wardenTrusted,scores={MDM=1}] ~~~ scoreboard players set mdmtoggledummy mdmtoggle 1
execute @s[tag=wardenTrusted,scores={MDM=1}] ~~~ scoreboard players operation @a mdmtoggle = mdmtoggledummy mdmtoggle
execute @s[tag=wardenTrusted,scores={MDM=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Mining Detection §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute @s[tag=wardenTrusted,scores={MDM=2}] ~~~ scoreboard players set mdmtoggledummy mdmtoggle 0
execute @s[tag=wardenTrusted,scores={MDM=2}] ~~~ scoreboard players operation @a mdmtoggle = mdmtoggledummy mdmtoggle
execute @s[tag=wardenTrusted,scores={MDM=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Mining Detection §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={MDM=2}] ~~~ scoreboard players set mdmtoggledummy MDM 0
#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 91
