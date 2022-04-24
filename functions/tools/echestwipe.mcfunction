#bridge-file-version: #3
execute @s ~~~ function tools/asset/echestwipe
execute @s ~~~ me §¶§7[§cWarden§7]§r §¶ EnderChest Cleared by Operator
execute @a[tag=wardenTrusted,scores={staff=1}] ~ ~ ~ tellraw @s {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ Cleared Player's EnderChest"}]}
scoreboard players set @s lstcmd 12
