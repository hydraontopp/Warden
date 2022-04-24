#If player is staff
execute @s[tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§bis staff and can't be frozen."}]}
execute @s[tag=wardenTrusted] ~~~ execute @a[tag=wardenTrusted] ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=!wardenTrusted] ~~~ execute @a[tag=wardenTrusted] ~~~ playsound note.pling @s ~ ~ ~

#If Not Frozen / frozen for the first time, then freeze
execute @s[tag=!wardenTrusted] ~~~ scoreboard players add @s fzplr 1
execute @s[tag=!wardenTrusted,scores={fzplr=1}] ~~~ gamerule sendcommandfeedback false
execute @s[tag=!wardenTrusted,scores={fzplr=1}] ~~~ effect @s slowness 99999999 255
execute @s[tag=!wardenTrusted,scores={fzplr=1}] ~~~ effect @s strength 99999999 255
execute @s[tag=!wardenTrusted,scores={fzplr=1}] ~~~ tp @s ~ ~1 ~
execute @s[tag=!wardenTrusted,scores={fzplr=1}] ~~~ fill ~ ~2 ~ ~ ~-2 ~ deny
execute @s[tag=!wardenTrusted,scores={fzplr=1}] ~~~ summon armor_stand fzplr
execute @s[tag=!wardenTrusted,scores={fzplr=1}] ~~~ fill ~1~2~1 ~-1~-2~-1 structure_void 0 replace air
execute @s[tag=!wardenTrusted,scores={fzplr=1}] ~~~ fill ~~~ ~~1~ air
execute @s[tag=!wardenTrusted,scores={fzplr=1}] ~~~ gamemode a
execute @s[tag=!wardenTrusted,scores={fzplr=1}] ~~~ effect @e[name=fzplr,type=armor_stand] invisibility 99999999 2 true
execute @s[tag=!wardenTrusted,scores={fzplr=1}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§bhas been §6frozen §bby a operator."}]}

#If frozen then init unfreeze
execute @s[tag=!wardenTrusted,scores={fzplr=2}] ~~~ effect @s clear
execute @s[tag=!wardenTrusted,scores={fzplr=2}] ~~~ gamemode s
execute @s[tag=!wardenTrusted,scores={fzplr=2}] ~~~ fill ~2 ~3 ~2 ~-2 ~-3 ~-2 air 0 replace structure_void
execute @s[tag=!wardenTrusted,scores={fzplr=2}] ~~~ fill ~2 ~3 ~2 ~-2 ~-3 ~-2 air 0 replace deny
execute @s[tag=!wardenTrusted,scores={fzplr=2}] ~~~ kill @e[r=3,name=fzplr]
execute @s[tag=!wardenTrusted,scores={fzplr=2}] ~~~ gamerule sendcommandfeedback true
execute @s[tag=!wardenTrusted,scores={fzplr=2}] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§bhas been §6unfrozen §bby a operator."}]}
execute @s[tag=!wardenTrusted,scores={fzplr=2}] ~~~ scoreboard players set @s fzplr 0

#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
