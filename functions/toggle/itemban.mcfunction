execute @s[tag=wardenTrusted] ~~~ scoreboard players add ibmtoggledummy IBM 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @a IBM = ibmtoggledummy IBM

#turn on
execute @s[tag=wardenTrusted,scores={IBM=1}] ~~~ scoreboard players set ibmtoggledummy ibmtoggle 1
execute @s[tag=wardenTrusted,scores={IBM=1}] ~~~ scoreboard players operation @a ibmtoggle = ibmtoggledummy ibmtoggle
execute @s[tag=wardenTrusted,scores={IBM=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Custom Item Ban §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute @s[tag=wardenTrusted,scores={IBM=2}] ~~~ scoreboard players set ibmtoggledummy ibmtoggle 0
execute @s[tag=wardenTrusted,scores={IBM=2}] ~~~ scoreboard players operation @a ibmtoggle = ibmtoggledummy ibmtoggle
execute @s[tag=wardenTrusted,scores={IBM=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Custom Item Ban §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={IBM=2}] ~~~ scoreboard players set ibmtoggledummy IBM 0
#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~
scoreboard players set @s lstcmd 57
