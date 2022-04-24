execute @s[tag=wardenTrusted] ~~~ scoreboard players add uoimtoggledummy UOIM 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @a UOIM = uoimtoggledummy UOIM

#turn on
execute @s[tag=wardenTrusted,scores={UOIM=1}] ~~~ scoreboard players set uoimtoggledummy uoimtoggle 1
execute @s[tag=wardenTrusted,scores={UOIM=1}] ~~~ scoreboard players operation @a uoimtoggle = uoimtoggledummy uoimtoggle
execute @s[tag=wardenTrusted,scores={UOIM=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Unobtainable Items §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @a[tag=wardenTrusted,scores={has_xx=0,UOIM=1}] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Experimental Features §7: §cNot Enabled §7|| §cThis module may not work!"}]}
#turn off
execute @s[tag=wardenTrusted,scores={UOIM=2}] ~~~ scoreboard players set uoimtoggledummy uoimtoggle 0
execute @s[tag=wardenTrusted,scores={UOIM=2}] ~~~ scoreboard players operation @a uoimtoggle = uoimtoggledummy uoimtoggle
execute @s[tag=wardenTrusted,scores={UOIM=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Unobtainable Items §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={UOIM=2}] ~~~ scoreboard players set uoimtoggledummy UOIM 0
#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 27

scoreboard players set @s lstcmd 75
