execute @s[tag=wardenTrusted] ~~~ tellraw @a[tag=wardenTrusted] {"rawtext":[{"text":"§¶§7[§cWarden§7]§r §¶ §d"},{"selector":"@s"},{"text":" §¶§bis staff and cannot be punished"}]}
execute @s[tag=!wardenTrusted] ~~~ function tools/asset/punish_asset
execute @s[tag=!wardenTrusted] ~~~ function particle/explode
execute @s[tag=!wardenTrusted] ~~~ playsound mob.wither.break_block @s ~~~ 3 1 4