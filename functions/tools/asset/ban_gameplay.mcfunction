tp @s 0 900 0
gamemode a @s
effect @s blindness 9999 99 true
effect @s slow_falling 99999 99 true
effect @s strength 99999 255 true
function tools/asset/inv_lock

execute @s[tag=!wardenTrusted] ~~~ title @s[tag=PermBan] title §¶§7[§cWarden§7]§r §¶ You are tools Global Banned!
execute @s[tag=!wardenTrusted] ~~~ title @s[tag=BanCBE] title §¶§7[§cWarden§7]§r §¶ Flagged for CBE
execute @s[tag=!wardenTrusted] ~~~ title @s[tag=BanCreative] title §¶§7[§cWarden§7]§r §¶ Flagged Creative Mode
execute @s[tag=!wardenTrusted] ~~~ title @s[tag=Ban] title §¶§7[§cWarden§7]§r §¶ BANNED BY OPERATOR
execute @s[tag=!wardenTrusted] ~~~ title @s[tag=illegalitemban] title §¶§7[§cWarden§7]§r §¶ Flagged for Illegal Items
execute @s[tag=!wardenTrusted] ~~~ title @s[tag=BanFly] title §¶§7[§cWarden§7]§r §¶ Flagged for Fly Hacks
execute @s[tag=!wardenTrusted] ~~~ title @s[tag=BanPhase] title §¶§7[§cWarden§7]§r §¶ Flagged for No Clip
execute @s[tag=!wardenTrusted] ~~~ title @s[scores={warn=3}] title §¶§7[§cWarden§7]§r §¶ Third Warning Reached
#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide