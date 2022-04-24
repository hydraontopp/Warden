execute @s[tag=wardenTrusted] ~~~ scoreboard players add dethtoggledummy dethtoggle 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @a dethtoggle = dethtoggledummy dethtoggle

#turn on
execute @s[tag=wardenTrusted,scores={dethtoggle=1}] ~~~ scoreboard players set BDXdummy Deathef 1
execute @s[tag=wardenTrusted,scores={dethtoggle=1}] ~~~ scoreboard players operation @a Deathef = BDXdummy Deathef
execute @s[tag=wardenTrusted,scores={dethtoggle=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Death Effect §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @a[tag=wardenTrusted,scores={has_xx=0,dethtoggle=1}] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Experimental Features §7: §cNot Enabled §7|| §cThis module may not work!"}]}
#turn off
execute @s[tag=wardenTrusted,scores={dethtoggle=2}] ~~~ scoreboard players set BDXdummy Deathef 0
execute @s[tag=wardenTrusted,scores={dethtoggle=2}] ~~~ scoreboard players operation @a Deathef = BDXdummy Deathef
execute @s[tag=wardenTrusted,scores={dethtoggle=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Death Effect §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={dethtoggle=2}] ~~~ scoreboard players set dethtoggledummy dethtoggle 0
#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 27
