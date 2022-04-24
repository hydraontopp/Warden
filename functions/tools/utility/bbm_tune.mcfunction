#turn on
execute @s[tag=wardenTrusted] ~~~ scoreboard players add ftDummy BBMCC 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @a BBMCC = ftDummy BBMCC
execute @s[tag=wardenTrusted,scores={BBMCC=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Bottom Bedrock §bhas been toggled §2Caves and Cliffs §bby §d"},{"selector":"@s"}]}
#turn off
execute @s[tag=wardenTrusted,scores={BBMCC=2}] ~~~ scoreboard players operation @a BBMCC = ftDummy BBMCC
execute @s[tag=wardenTrusted,scores={BBMCC=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Bottom Bedrock §bhas been toggled §cy=0 §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={BBMCC=2}] ~~~ scoreboard players set ftDummy BBMCC 0

#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

#needs a dummy objective for add-switch to work. But I'm too fucked up and lazy for that right now.


scoreboard players operation @a BBMCC = ftDummy BBMCC
#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
