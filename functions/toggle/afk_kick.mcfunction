execute @s[tag=wardenTrusted] ~~~ scoreboard players add afkdummy afkm 1
scoreboard players operation @a afkm = afkdummy afkm

#turn on
execute @s[tag=wardenTrusted,scores={afkm=1}] ~~~ scoreboard players operation @a afkm = afkdummy afkm
execute @s[tag=wardenTrusted,scores={afkm=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Afk Kick §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute @s[tag=wardenTrusted,scores={afkm=2}] ~~~ scoreboard players operation @a afkm = afkdummy afkm
execute @s[tag=wardenTrusted,scores={afkm=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Afk Kick §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={afkm=2}] ~~~ scoreboard players set afkdummy afkm 0
execute @s[tag=wardenTrusted,scores={afkm=2}] ~~~ scoreboard players operation @a afkm = afkdummy afkm

#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

