execute @s[tag=wardenTrusted] ~~~ scoreboard players add rsmtoggledummy RSM 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @a RSM = rsmtoggledummy RSM

#turn on
execute @s[tag=wardenTrusted,scores={RSM=1}] ~~~ scoreboard players set rsmtoggledummy rsmtoggle 1
execute @s[tag=wardenTrusted,scores={RSM=1}] ~~~ scoreboard players operation @a rsmtoggle = rsmtoggledummy rsmtoggle
execute @s[tag=wardenTrusted,scores={RSM=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Random Spawn §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
tellraw @s[tag=wardenTrusted,scores={has_xx=0,RSM=1}] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Gametest Features §7: §cNot Enabled §7|| §cWorldSpawn will randomize but worldborder will not teleport players to the randomized coords"}]}
#turn off
execute @s[tag=wardenTrusted,scores={RSM=2}] ~~~ scoreboard players set rsmtoggledummy rsmtoggle 0
execute @s[tag=wardenTrusted,scores={RSM=2}] ~~~ scoreboard players operation @a rsmtoggle = rsmtoggledummy rsmtoggle
execute @s[tag=wardenTrusted,scores={RSM=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Random Spawn §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={RSM=2}] ~~~ scoreboard players set rsmtoggledummy RSM 0
#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 69
