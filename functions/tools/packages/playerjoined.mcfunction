# This executes on THE PLAYER when every time they join ( Good for setting up combat logging and such )
# If gametest isn't enabled it will use the online player objective from autolagclear package
# This is no longer called from gametest - 3/8/22

execute @s[scores={in_combat=1,clmtoggle=1}] ~~~ function tools/asset/clog_punish

#Remove player from realm
execute @s[tag=!wardenTrusted,tag=PermBan] ~~~ execute @s ~~~ function tools/asset/ban_disconnect_message
execute @s[tag=!wardenTrusted,tag=BanCBE] ~~~ execute @s ~~~ function tools/asset/ban_disconnect_message
execute @s[tag=!wardenTrusted,tag=Ban] ~~~ execute @s ~~~ function tools/asset/ban_disconnect_message
execute @s[tag=!wardenTrusted,tag=illegalitemban] ~~~ execute @s ~~~ function tools/asset/ban_disconnect_message
execute @s[tag=!wardenTrusted,tag=BanFly] ~~~ execute @s ~~~ function tools/asset/ban_disconnect_message
execute @s[tag=!wardenTrusted,tag=BanPhase] ~~~ execute @s ~~~ function tools/asset/ban_disconnect_message
execute @s[tag=!wardenTrusted,scores={warn=3..}] ~~~ execute @s ~~~ function tools/asset/ban_disconnect_message

event entity @s[tag=!wardenTrusted,scores={BanPhase=1..}] warden:ban_soft
event entity @s[tag=!wardenTrusted,scores={BanFly=1..}] warden:ban_soft
event entity @s[tag=!wardenTrusted,scores={IIB=1..}] warden:ban_soft
event entity @s[tag=!wardenTrusted,scores={PermBan=1..}] warden:ban_soft
event entity @s[tag=!wardenTrusted,scores={BanWarn=1..}] warden:ban_soft
event entity @s[tag=!wardenTrusted,scores={BanCBE=1..}] warden:ban_soft
event entity @s[tag=!wardenTrusted,scores={warn=3..}] warden:ban_soft

#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide