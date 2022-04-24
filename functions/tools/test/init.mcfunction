scoreboard objectives add has_xx dummy
scoreboard players set @s has_xx 0
execute @s[tag=wardenTrusted] ~~~ time set 1900
execute @s[tag=wardenTrusted] ~~~ gamerule dodaylightcycle false
execute @s[tag=wardenTrusted] ~~~ gamerule doweathercycle false
execute @s[tag=wardenTrusted] ~~~ function tools/asset/version
execute @s[tag=wardenTrusted] ~~~ function tools/test
execute @s[tag=wardenTrusted] ~~~ scoreboard players set @a welcome 90
execute @s[tag=wardenTrusted] ~~~ scoreboard players set @a welcomed 0
event entity @a[tag=wardenTrusted] warden:test_experimental

tag @a remove theif


#Deny NonDeveloper
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide