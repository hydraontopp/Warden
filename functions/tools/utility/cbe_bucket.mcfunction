#turn on
execute @s[tag=wardenTrusted] ~~~ scoreboard players add ftDummy CBEBU 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @a CBEBU = ftDummy CBEBU
execute @s[tag=wardenTrusted,scores={CBEBU=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Anti-CBE Bucket Remove §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute @s[tag=wardenTrusted,scores={CBEBU=2}] ~~~ scoreboard players operation @a CBEBU = ftDummy CBEBU
execute @s[tag=wardenTrusted,scores={CBEBU=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Anti-CBE Bucket Remove §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={CBEBU=2}] ~~~ scoreboard players set ftDummy CBEBU 0

#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

#needs a dummy objective for add-switch to work. But I'm too fucked up and lazy for that right now.


scoreboard players operation @a CBEBU = ftDummy CBEBU
#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
