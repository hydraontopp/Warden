tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"text":"§¶§d"},{"selector":"@s"}, {"text":"§¶§b Coordinates§f: §g"},{"score":{"name":"@s","objective":"X_Coordinate"}},{"text":"/"},{"score":{"name":"@s","objective":"Y_Coordinate"}},{"text":"/"},{"score":{"name":"@s","objective":"Z_Coordinate"}}]}
tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"text":"§¶§d"},{"selector":"@s"}, {"text":"§¶§b Spawn Coords: §g"},{"score":{"name":"@s","objective":"X_Coord_S"}},{"text":"/"},{"score":{"name":"@s","objective":"Y_Coord_S"}},{"text":"/"},{"score":{"name":"@s","objective":"Z_Coord_S"}}]}
tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"text":"§¶§d"},{"selector":"@s"}, {"text":"§¶§b Death Coords: §g"},{"score":{"name":"@s","objective":"X_Coord_D"}},{"text":"/"},{"score":{"name":"@s","objective":"Y_Coord_D"}},{"text":"/"},{"score":{"name":"@s","objective":"Z_Coord_D"}}]}

#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
