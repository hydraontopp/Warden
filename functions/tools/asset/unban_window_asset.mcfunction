hide
#Deny if not staff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ playsound note.pling @s ~ ~ ~

#add switch loop trigger
execute @s[tag=wardenTrusted] ~~~ scoreboard players add @s unban 1

#Start unban window
execute @s[tag=wardenTrusted,scores={unban=1}] ~~~ scoreboard players set @s unbantimer 540
execute @s[tag=wardenTrusted,scores={unban=1}] ~~~ scoreboard players set @s hometp 5
execute @s[tag=wardenTrusted,scores={unban=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §d"},{"selector":"@s"},{"text":" §bhas §2OPENED a §6Unban Window"}]}
execute @s[tag=wardenTrusted,scores={unban=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§d"},{"selector":"@s"},{"text":" §¶§bneeds to close the window before they leave the realm.\nThey may execute the unban window command again to close it early."}]}

#Close unban window
execute @s[tag=wardenTrusted,scores={unban=2}] ~~~ scoreboard players reset @s unbantimer
execute @s[tag=wardenTrusted,scores={unban=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §d"},{"selector":"@s"},{"text":" §bhas §cCLOSED a §6Unban Window"}]}
execute @s[tag=wardenTrusted,scores={unban=2}] ~~~ scoreboard players set @s hometp 3
execute @s[tag=wardenTrusted,scores={unban=2}] ~~~ scoreboard players set @s unban 0
