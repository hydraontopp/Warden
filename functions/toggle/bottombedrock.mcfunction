execute @s[tag=wardenTrusted] ~~~ scoreboard players add bbmtoggledummy BBM 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @a BBM = bbmtoggledummy BBM

#turn on
execute @s[tag=wardenTrusted,scores={BBM=1}] ~~~ scoreboard players set bbmtoggledummy bbmtoggle 1
execute @s[tag=wardenTrusted,scores={BBM=1}] ~~~ scoreboard players operation @a bbmtoggle = bbmtoggledummy bbmtoggle
execute @s[tag=wardenTrusted,scores={BBM=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Bottom Bedrock §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @a[tag=wardenTrusted,scores={has_xx=0,BBM=1}] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Experimental Features §7: §cNot Enabled §7|| §cBedrock Layers may spawn in all demensions without proper detections working."}]}
execute @s[tag=wardenTrusted,scores={BBM=1}] ~~~ dialogue open @s @s uac_fine_tune_bbm
#turn off
execute @s[tag=wardenTrusted,scores={BBM=2}] ~~~ scoreboard players set bbmtoggledummy bbmtoggle 0
execute @s[tag=wardenTrusted,scores={BBM=2}] ~~~ scoreboard players operation @a bbmtoggle = bbmtoggledummy bbmtoggle
execute @s[tag=wardenTrusted,scores={BBM=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Bottom Bedrock §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={BBM=2}] ~~~ scoreboard players set bbmtoggledummy BBM 0
#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 27
