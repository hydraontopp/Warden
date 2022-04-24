#Checks to see if victem is staff
execute @s[tag=wardenTrusted] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §bUnable to use smite on §d"},{"selector":"@s"},{"text":" §¶§bbecause they are staff."}]}

#Smite players
execute @s[tag=!wardenTrusted] ~~~ tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§bwas smited by a operator"}]}
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~3~ summon lightning_bolt
execute @s[tag=!wardenTrusted] ~~~ function particle/totem_poof
playsound note.bass @a ~ ~ ~

scoreboard players set @s lstcmd 20

execute @s[tag=!wardenTrusted] ~~~ kill @s
