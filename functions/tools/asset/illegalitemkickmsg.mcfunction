tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §¶§cFlagged §d"},{"selector":"@s"},{"text":"§¶§c for illegal items"}]}
playsound note.bass @a ~ ~ ~

#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
