execute @s[tag=wardenTrusted] ~~~ scoreboard players add armtoggledummy armtoggle 1
scoreboard players operation @a armtoggle = armtoggledummy armtoggle

#turn on
execute @s[tag=wardenTrusted,scores={armtoggle=1}] ~~~ scoreboard players operation @a armtoggle = armtoggledummy armtoggle
execute @s[tag=wardenTrusted,scores={armtoggle=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Anti-Reach §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute @s[tag=wardenTrusted,scores={armtoggle=2}] ~~~ scoreboard players operation @a armtoggle = armtoggledummy armtoggle
execute @s[tag=wardenTrusted,scores={armtoggle=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Anti-Reach §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={armtoggle=2}] ~~~ fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air 0 replace structure_void
execute @s[tag=wardenTrusted,scores={armtoggle=2}] ~~~ scoreboard players set armtoggledummy armtoggle 0
execute @s[tag=wardenTrusted,scores={armtoggle=2}] ~~~ scoreboard players operation @a armtoggle = armtoggledummy armtoggle

#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

