tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► §6Anti-C Logging §c§lTemp Kicked§r§b §d"},{"selector":"@s"},{"text":"  for Inactivity"}]}

tellraw @a {"rawtext":[{"text":"itzoptixxo fell from a high place"}]}

playsound note.bass @a ~ ~ ~
scoreboard players reset @s afktimer
event entity @s warden:ban_soft

#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide