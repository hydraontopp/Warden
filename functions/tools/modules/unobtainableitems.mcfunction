#Clear items
clear @s[tag=!wardenTrusted,scores={uoimtoggle=1}] bedrock
clear @s[tag=!wardenTrusted,scores={uoimtoggle=1}] barrier
clear @s[tag=!wardenTrusted,scores={uoimtoggle=1}] end_portal_frame
clear @s[tag=!wardenTrusted,scores={uoimtoggle=1}] mob_spawner

#Dropped Items bypass
execute @s[tag=!wardenTrusted,scores={uoimtoggle=1}] ~~~ function tools/asset/uoim_dropclear_asset



#Placed Items bypass
execute @s[tag=!wardenTrusted,scores={uoimtoggle=1}] ~ ~ ~ fill ~8 ~5 ~8 ~-8 ~-5 ~-8 air 0 replace barrier
execute @s[tag=!wardenTrusted,scores={uoimtoggle=1}] ~ ~ ~ execute @s[scores={bbmtoggle=0,Y_Coordinate=6..}] ~~~ fill ~8 ~5 ~8 ~-8 ~-5 ~-8 air 0 replace bedrock



#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
