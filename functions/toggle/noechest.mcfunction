execute @s[tag=wardenTrusted] ~~~ scoreboard players add nemtoggledummy NEM 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @a NEM = nemtoggledummy NEM

#turn on
execute @s[tag=wardenTrusted,scores={NEM=1}] ~~~ scoreboard players set nemtoggledummy nemtoggle 1
execute @s[tag=wardenTrusted,scores={NEM=1}] ~~~ scoreboard players operation @a nemtoggle = nemtoggledummy nemtoggle
execute @s[tag=wardenTrusted,scores={NEM=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6No Echest §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute @s[tag=wardenTrusted,scores={NEM=2}] ~~~ scoreboard players set nemtoggledummy nemtoggle 0
execute @s[tag=wardenTrusted,scores={NEM=2}] ~~~ scoreboard players operation @a nemtoggle = nemtoggledummy nemtoggle
execute @s[tag=wardenTrusted,scores={NEM=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6No Echest §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={NEM=2}] ~~~ scoreboard players set nemtoggledummy NEM 0
#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 62
