execute @s[tag=wardenTrusted] ~~~ scoreboard players add clmdummy clmtoggle 1
scoreboard players operation @a clmtoggle = clmdummy clmtoggle

#turn on kill mode
execute @s[tag=wardenTrusted,scores={clmtoggle=1}] ~~~ scoreboard players operation @a clmtoggle = clmdummy clmtoggle
execute @s[tag=wardenTrusted,scores={clmtoggle=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Anti-C Logging §bhas been toggled to §2KILL MODE §bby §d"},{"selector":"@s"}]}
tellraw @a[tag=wardenTrusted,scores={has_xx=0,clmtoggle=1}] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Experimental Features §7: §cNot Enabled §7|| §cThis module may not work!"}]}

#turn on clear mode
execute @s[tag=wardenTrusted,scores={clmtoggle=2}] ~~~ scoreboard players operation @a clmtoggle = clmdummy clmtoggle
execute @s[tag=wardenTrusted,scores={clmtoggle=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Anti-C Logging §bhas been toggled to §2CLEAR MODE §bby §d"},{"selector":"@s"}]}
tellraw @a[tag=wardenTrusted,scores={has_xx=0,clmtoggle=2}] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Experimental Features §7: §cNot Enabled §7|| §cThis module may not work!"}]}
#turn off
execute @s[tag=wardenTrusted,scores={clmtoggle=3}] ~~~ scoreboard players operation @a clmtoggle = clmdummy clmtoggle
execute @s[tag=wardenTrusted,scores={clmtoggle=3}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Anti-C Logging §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={clmtoggle=3}] ~~~ scoreboard players set clmdummy clmtoggle 0
execute @s[tag=wardenTrusted,scores={clmtoggle=3}] ~~~ scoreboard players operation @a clmtoggle = clmdummy clmtoggle

#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

