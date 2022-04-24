execute @s[tag=wardenTrusted] ~~~ scoreboard players add wbmtoggledummy WBM 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @a WBM = wbmtoggledummy WBM

#turn on
execute @s[tag=wardenTrusted,scores={WBM=1}] ~~~ scoreboard players set wbmtoggledummy wbmtoggle 1
execute @s[tag=wardenTrusted,scores={WBM=1}] ~~~ scoreboard players operation @a wbmtoggle = wbmtoggledummy wbmtoggle
execute @s[tag=wardenTrusted,scores={WBM=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6World Border §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @a[tag=wardenTrusted,scores={has_xx=0,WBM=1}] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Experimental Features §7: §cNot Enabled §7|| §cThis module may not work!"}]}
#turn off
execute @s[tag=wardenTrusted,scores={WBM=2}] ~~~ scoreboard players set wbmtoggledummy wbmtoggle 0
execute @s[tag=wardenTrusted,scores={WBM=2}] ~~~ scoreboard players operation @a wbmtoggle = wbmtoggledummy wbmtoggle
execute @s[tag=wardenTrusted,scores={WBM=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6World Border §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={WBM=2}] ~~~ scoreboard players set wbmtoggledummy WBM 0
#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 77
