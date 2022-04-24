#Anti-Creative Stuff
gamemode s @s[m=c,tag=!wardenTrusted]
scoreboard players add @s gmc_flag 1
kill @s

# creative flag alerts
execute @s[tag=!wardenTrusted,scores={gmc_flag=1}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§bhas been flagged for §cCREATIVE MODE §7[§c1§7/§24§7]"}]}
execute @s[tag=!wardenTrusted,scores={gmc_flag=2}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§bhas been flagged for §cCREATIVE MODE §7[§c2§7/§24§7]"}]}
execute @s[tag=!wardenTrusted,scores={gmc_flag=3}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§bhas been flagged for §cCREATIVE MODE §7[§c3§7/§24§7]"}]}
execute @s[tag=!wardenTrusted,scores={gmc_flag=4}] ~~~ tag @s add BanCreative
playsound note.bass @a ~ ~ ~

#ban message
execute @s[tag=!wardenTrusted,tag=BanCreative,scores={gmc_flag=4}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":"§b's §¶§cgameplay has been restricted due to changing gamemodes"}]}

#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
