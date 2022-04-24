execute @s[tag=wardenTrusted] ~~~ scoreboard players add tpmtoggledummy TPM 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @a TPM = tpmtoggledummy TPM

#turn on
execute @s[tag=wardenTrusted,scores={TPM=1}] ~~~ scoreboard players set tpmtoggledummy tpmtoggle 1
execute @s[tag=wardenTrusted,scores={TPM=1}] ~~~ scoreboard players operation @a tpmtoggle = tpmtoggledummy tpmtoggle
execute @s[tag=wardenTrusted,scores={TPM=1}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Time Played Tracker §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute @s[tag=wardenTrusted,scores={TPM=2}] ~~~ scoreboard players set tpmtoggledummy tpmtoggle 0
execute @s[tag=wardenTrusted,scores={TPM=2}] ~~~ scoreboard players operation @a tpmtoggle = tpmtoggledummy tpmtoggle
execute @s[tag=wardenTrusted,scores={TPM=2}] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Time Played Tracker §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=wardenTrusted,scores={TPM=2}] ~~~ scoreboard players set tpmtoggledummy TPM 0
#Deny Nonstaff
execute @s[tag=!wardenTrusted] ~~~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bSorry, you arent Warden Trusted."}]}
execute @s[tag=!wardenTrusted] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=wardenTrusted] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 72
