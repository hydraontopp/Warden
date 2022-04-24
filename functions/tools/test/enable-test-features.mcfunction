execute @s[tag=wardenTrusted] ~~~ scoreboard players set testindummy testin 1
execute @s[tag=wardenTrusted] ~~~ scoreboard players operation @s testin = testindummy testin
execute @s[tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶► The §2Developer Testing Features §bhas been used by §d"},{"selector":"@s"}]}
tellraw @a[tag=wardenTrusted,scores={has_xx=0}] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §6Experimental Features §7: §cNot Enabled §7|| §cThis module may not work!"}]}
#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
