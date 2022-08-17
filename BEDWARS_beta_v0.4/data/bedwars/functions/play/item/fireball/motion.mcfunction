#Guizhi

data modify entity @s PortalCooldown set value 200
data modify entity @s Owner set from entity @p[scores={drop_fireball=1..}] UUID
execute positioned ^ ^ ^0.2 run summon marker ~ ~ ~ {Tags:["fireball_motion","bedwars"]}

# Motion * 0.672 = Power , 正常Power約0.15

# X方向 Motion(Power)
execute store result score @s Tmp run data get entity @s Pos[0] 100
execute positioned ^ ^ ^1 store result score @s num run data get entity @e[tag=fireball_motion,limit=1,sort=nearest] Pos[0] 100
scoreboard players operation @s num -= @s Tmp
execute store result entity @s power[0] double 0.01 run scoreboard players get @s num

# Y方向 Motion(Power)
execute store result score @s Tmp run data get entity @s Pos[1] 100
execute positioned ^ ^ ^1 store result score @s num run data get entity @e[tag=fireball_motion,limit=1,sort=nearest] Pos[1] 100
scoreboard players operation @s num -= @s Tmp
execute store result entity @s power[1] double 0.01 run scoreboard players get @s num

# Z方向 Motion(Power)
execute store result score @s Tmp run data get entity @s Pos[2] 100
execute positioned ^ ^ ^1 store result score @s num run data get entity @e[tag=fireball_motion,limit=1,sort=nearest] Pos[2] 100
scoreboard players operation @s num -= @s Tmp
execute store result entity @s power[2] double 0.01 run scoreboard players get @s num

execute positioned ^ ^ ^1 run kill @e[tag=fireball_motion,limit=1,sort=nearest]
