execute @s[tag=wardenTrusted] ~~~ scoreboard players add acmtoggledummy ACM 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @a ACM = acmtoggledummy ACM

#turn on
execute @s[tag=wardenTrusted,scores={ACM=1}] ~~~ scoreboard players set acmtoggledummy acmtoggle 1
execute @s[tag=wardenTrusted,scores={ACM=1}] ~~~ scoreboard players operation @a acmtoggle = acmtoggledummy acmtoggle
execute @s[tag=wardenTrusted,scores={ACM=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Anti-CBE §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @a[tag=wardenTrusted,scores={has_xx=0,ACM=1}] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Experimental Features §7: §cNot Enabled §7|| §cSome detections may not work!"}]}
#turn off
execute @s[tag=wardenTrusted,scores={ACM=2}] ~~~ scoreboard players set acmtoggledummy acmtoggle 0
execute @s[tag=wardenTrusted,scores={ACM=2}] ~~~ scoreboard players operation @a acmtoggle = acmtoggledummy acmtoggle
execute @s[tag=wardenTrusted,scores={ACM=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Anti-CBE §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={ACM=2}] ~~~ scoreboard players set acmtoggledummy ACM 0
#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 27
