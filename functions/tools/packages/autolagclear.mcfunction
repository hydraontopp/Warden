#this function is ran on a random player every 5 seconds ( helps for TPS control )

scoreboard players reset @s lagtimer
execute @a[scores={bbmtoggle=1}] ~~~ function tools/modules/bottombedrock
#execute @s[scores={wbmtoggle=1}] ~~~ function tools/modules/worldborder
execute @a[scores={ibmtoggle=1}] ~~~ function tools/modules/itemban
execute @a[scores={ssmtoggle=1}] ~~~ function tools/modules/wardenTrusted
execute @s[scores={nemtoggle=1},tag=!wardenTrusted] ~~~ function tools/asset/echestwipe
function tools/modules/enchanted_armor
function tools/packages/bans
function tools/modules/permban
function tools/modules/ownerstatus
function tools/asset/toggle_sync
function tools/modules/hotbarmessage

execute @a[scores={cbetime=0..2}] ~~~ gamerule commandblocksenabled true
gamerule randomtickspeed 1

execute @a[tag=UAC_vip,tag=!is_moving,scores={VIPM=2293}]  ~~~ function particle/nether_poof_small

#player counter
scoreboard players reset playerdummy playercount
execute @a ~~~ scoreboard players add playerdummy playercount 1

#Extra stuff for TPS control
execute @s ~~~ execute @e[r=100,type=xp_orb] ~~~ tp @s[type=xp_orb] @p
#suicide counter
scoreboard players add @s[scores={suicide=1..}] suicide 1
kill @s[scores={suicide=11}]
scoreboard players set @s[scores={suicide=11}] hometp 3
scoreboard players set @s[scores={suicide=11}] suicide 0

#This makes sure everyone doesn't get flagged for c-logging when the module is first turned on
#As the only other thing that resets their in_combat is the timer c-log timer
scoreboard players set @a[scores={clmtoggle=0}] in_combat 0

#This runs a function on players rejoining
execute @a[scores={online=0}] ~~~ function tools/packages/playerjoined
scoreboard players set * online 0
scoreboard players set @a online 1

#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
