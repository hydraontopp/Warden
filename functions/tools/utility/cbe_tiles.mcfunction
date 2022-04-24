#turn on
execute @s[tag=wardenTrusted] ~~~ scoreboard players add ftDummy CBECO 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @a CBECO = ftDummy CBECO
execute @s[tag=wardenTrusted,scores={CBECO=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Anti-CBE Tile Remove §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute @s[tag=wardenTrusted,scores={CBECO=2}] ~~~ scoreboard players operation @a CBECO = ftDummy CBECO
execute @s[tag=wardenTrusted,scores={CBECO=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Anti-CBE Tile Remove §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={CBECO=2}] ~~~ scoreboard players set ftDummy CBECO 0

#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

#needs a dummy objective for add-switch to work. But I'm too fucked up and lazy for that right now.


scoreboard players operation @a CBECO = ftDummy CBECO
#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
