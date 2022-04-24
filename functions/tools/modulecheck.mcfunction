execute @s ~~~ function tools/asset/modulecheckasset
scoreboard players set @s lstcmd 18


execute @s[tag=wardenTrusted] ~~~ playsound note.pling @s ~ ~ ~
execute @s[tag=!wardenTrusted] ~~~ playsound note.bass @s ~ ~ ~
