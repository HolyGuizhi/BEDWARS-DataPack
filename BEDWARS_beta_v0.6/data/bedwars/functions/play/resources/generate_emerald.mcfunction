#Guizhi

# pick_sameitem  0:多玩家可同時吸到隊伍資源生成點物資(預設)  1:多玩家無法同時吸到隊伍資源生成點物資
execute unless score pick_sameitem num matches 1 positioned ~ ~-1 ~ store result score @s Tmp run execute if entity @a[distance=..1.4,gamemode=survival]
execute if score pick_sameitem num matches 1 run scoreboard players set @s Tmp 1
execute unless score @s Tmp matches 2.. run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1,tag:{game:1b}},Tags:["bedwars","no_loop"]}
execute if score @s Tmp matches 2.. run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1},Tags:["bedwars","cant_pickup"],PickupDelay:32767}
