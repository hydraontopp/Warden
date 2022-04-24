execute @s[tag=wardenTrusted] ~~~ scoreboard players add afmtoggledummy AFM 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @a AFM = afmtoggledummy AFM

#turn on
execute @s[tag=wardenTrusted,scores={AFM=1}] ~~~ scoreboard players set afmtoggledummy afmtoggle 1
execute @s[tag=wardenTrusted,scores={AFM=1}] ~~~ scoreboard players operation @a afmtoggle = afmtoggledummy afmtoggle
execute @s[tag=wardenTrusted,scores={AFM=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Anti-Fly §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @a[tag=wardenTrusted,scores={has_xx=0,AFM=1}] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Experimental Features §7: §cNot Enabled §7|| §cThis module may false ban with elytra users!"}]}
#turn off
execute @s[tag=wardenTrusted,scores={AFM=2}] ~~~ scoreboard players set afmtoggledummy afmtoggle 0
execute @s[tag=wardenTrusted,scores={AFM=2}] ~~~ scoreboard players operation @a afmtoggle = afmtoggledummy afmtoggle
execute @s[tag=wardenTrusted,scores={AFM=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Anti-Fly §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={AFM=2}] ~~~ scoreboard players set afmtoggledummy AFM 0
#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 27
