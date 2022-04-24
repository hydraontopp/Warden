#Sets up scoreboard
scoreboard objectives add cleararea dummy cleararea
scoreboard players add @s[tag=wardenTrusted] cleararea 1

#If has clearcheck, then clear area
execute @p[scores={cleararea=2},tag=wardenTrusted] ~~~ summon armor_stand cleararea
execute @e[type=armor_stand,name=cleararea] ~~~ fill ~-15 ~-15 ~-15 ~15 ~15 ~15 air
execute @p[scores={cleararea=2},tag=wardenTrusted] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§bjust cleared a small area"}]}
kill @e[type=armor_stand,name=cleararea]

#Make-Shift "are you sure"
execute @p[scores={cleararea=1},tag=wardenTrusted] ~~~ tellraw @p[tag=!clearcheck] {"rawtext":[{"text":"§¶§cUAC► This will fill all blocks within a 15 radius with air!"}]}
execute @p[scores={cleararea=1},tag=wardenTrusted] ~~~ tellraw @p[tag=!clearcheck] {"rawtext":[{"text":"§¶§cUAC► This can't be undone! Execute command again if you're sure."}]}
execute @p[scores={cleararea=2},tag=wardenTrusted] ~~~ tellraw @p[tag=!clearcheck] {"rawtext":[{"text":"§¶§cUAC► The immediate area has been cleared with air."}]}

execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► You must be staff to use this command!"}]}
execute @s[tag=wardenTrusted] ~~~ playsound note.pling @s ~ ~ ~
execute @s[tag=!wardenTrusted] ~~~ playsound note.bass @s ~ ~ ~

#Remove tag after area is cleared
execute @p[scores={cleararea=2}] ~~~ scoreboard players reset @s cleararea
execute @a[scores={cleararea=3..10}] ~~~ scoreboard players reset @s cleararea

scoreboard players set @s lstcmd 10
