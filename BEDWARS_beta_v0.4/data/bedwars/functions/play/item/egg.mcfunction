#Guizhi

# First times
execute as @s[tag=!bedwars] run function bedwars:play/item/egg_setting

# Bridge
scoreboard players add @s times 1
execute as @s[tag=blue,scores={times=3..50}] positioned ~ ~-3 ~ unless entity @e[type=armor_stand,distance=..3] run fill ^-0.8 ^ ^-2 ^0.8 ^ ^-1 blue_wool keep
execute as @s[tag=red,scores={times=3..50}] positioned ~ ~-3 ~ unless entity @e[type=armor_stand,distance=..3] run fill ^-0.8 ^ ^-2 ^0.8 ^ ^-1 red_wool keep
execute as @s[tag=yellow,scores={times=3..50}] positioned ~ ~-3 ~ unless entity @e[type=armor_stand,distance=..3] run fill ^-0.8 ^ ^-2 ^0.8 ^ ^-1 yellow_wool keep
execute as @s[tag=green,scores={times=3..50}] positioned ~ ~-3 ~ unless entity @e[type=armor_stand,distance=..3] run fill ^-0.8 ^ ^-2 ^0.8 ^ ^-1 green_wool keep
kill @s[scores={times=50..}]
