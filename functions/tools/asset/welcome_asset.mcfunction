playsound random.levelup @s ~~~ 2
title @s title §¶§c§l► Welcome ◄
title @s subtitle §¶§e§lYou joined for the first time!
tellraw @a {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§d"},{"selector":"@s"},{"text":" §¶§bhas joined for the first time!"}]}
tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶§bfor help, do either !help or /function help"}]}
function tools/asset/enable-init-asset


#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide