#Sets up scoreboard
scoreboard players add @s[tag=wardenTrusted] cleararealarge 1

#If has clearcheck, then clear area
execute @p[scores={cleararealarge=2},tag=wardenTrusted] ~~~ summon armor_stand cleararealarge
execute @p[scores={cleararealarge=2},tag=wardenTrusted] ~15 ~ ~15 summon armor_stand cleararealarge
execute @p[scores={cleararealarge=2},tag=wardenTrusted] ~-15 ~ ~-15 summon armor_stand cleararealarge
execute @p[scores={cleararealarge=2},tag=wardenTrusted] ~-15 ~ ~15 summon armor_stand cleararealarge
execute @p[scores={cleararealarge=2},tag=wardenTrusted] ~15 ~ ~-15 summon armor_stand cleararealarge
execute @p[scores={cleararealarge=2},tag=wardenTrusted] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§bjust cleared a large area"}]}
execute @e[type=armor_stand,name=cleararealarge] ~~~ fill ~-15 ~-15 ~-15 ~15 ~15 ~15 air
kill @e[type=armor_stand,name=cleararealarge]

#Make-Shift "are you sure"
execute @p[scores={cleararealarge=1},tag=wardenTrusted] ~~~ tellraw @p[tag=!clearcheck] {"rawtext":[{"text":"§¶§cUAC► This will fill all blocks within a 60 Squared radius with air!"}]}
execute @p[scores={cleararealarge=1},tag=wardenTrusted] ~~~ tellraw @p[tag=!clearcheck] {"rawtext":[{"text":"§¶§cUAC► This can't be undone! Execute command again if you're sure."}]}
execute @p[scores={cleararealarge=2},tag=wardenTrusted] ~~~ tellraw @p[tag=!clearcheck] {"rawtext":[{"text":"§¶§cUAC► The area has been cleared with air."}]}

execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► You must be staff to use this command!"}]}
execute @s[tag=wardenTrusted] ~~~ playsound note.pling @s ~ ~ ~
execute @s[tag=!wardenTrusted] ~~~ playsound note.bass @s ~ ~ ~

#Remove tag after area is cleared
execute @p[scores={cleararealarge=2}] ~~~ scoreboard players reset @s cleararealarge
#60 Squared radius

scoreboard players set @s lstcmd 9

#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
