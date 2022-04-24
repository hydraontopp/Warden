hide
#unban window system
execute @s[tag=wardenTrusted,scores={unban=1}] ~~~ scoreboard players remove @s unbantimer 1 

execute @s[tag=wardenTrusted,scores={unban=1}] ~~~ execute @a[tag=!wardenTrusted,tag=PermBan] ~~~ function tools/asset/ban_asset_remove
execute @s[tag=wardenTrusted,scores={unban=1}] ~~~ execute @a[tag=!wardenTrusted,tag=BanCBE] ~~~ function tools/asset/ban_asset_remove
execute @s[tag=wardenTrusted,scores={unban=1}] ~~~ execute @a[tag=!wardenTrusted,tag=Ban] ~~~ function tools/asset/ban_asset_remove
execute @s[tag=wardenTrusted,scores={unban=1}] ~~~ execute @a[tag=!wardenTrusted,tag=illegalitemban] ~~~ function tools/asset/ban_asset_remove
execute @s[tag=wardenTrusted,scores={unban=1}] ~~~ execute @a[tag=!wardenTrusted,tag=BanFly] ~~~ function tools/asset/ban_asset_remove
execute @s[tag=wardenTrusted,scores={unban=1}] ~~~ execute @a[tag=!wardenTrusted,tag=BanPhase] ~~~ function tools/asset/ban_asset_remove
execute @s[tag=wardenTrusted,scores={unban=1}] ~~~ execute @a[tag=!wardenTrusted,scores={warn=3..}] ~~~ function tools/asset/ban_asset_remove

execute @s[tag=wardenTrusted,scores={unban=1,unbantimer=0..15}] ~~~ scoreboard players set @s hometp 3
execute @s[tag=wardenTrusted,scores={unban=1,unbantimer=0..8}] ~~~ scoreboard players set @s unban 0
execute @s[tag=wardenTrusted,scores={unban=0}] ~~~ scoreboard players reset @s unbantimer


////