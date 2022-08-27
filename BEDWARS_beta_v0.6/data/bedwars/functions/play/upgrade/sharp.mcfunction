#Guizhi

clear @s iron_sword{upgrade:1b} 1

execute as @s[team=blue] if score blue_sharp num matches 1.. run give @s diamond{game:1b} 8
execute as @s[team=blue] unless score blue_sharp num matches 1.. run tellraw @a[team=blue] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲得了永久鋒利I！","color":"aqua"}]
execute as @s[team=blue] unless score blue_sharp num matches 1.. as @a[team=blue] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=blue] run scoreboard players set blue_sharp num 1

execute as @s[team=red] if score red_sharp num matches 1.. run give @s diamond{game:1b} 8
execute as @s[team=red] unless score red_sharp num matches 1.. run tellraw @a[team=red] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲得了永久鋒利I！","color":"aqua"}]
execute as @s[team=red] unless score red_sharp num matches 1.. as @a[team=red] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=red] run scoreboard players set red_sharp num 1

execute as @s[team=yellow] if score yellow_sharp num matches 1.. run give @s diamond{game:1b} 8
execute as @s[team=yellow] unless score yellow_sharp num matches 1.. run tellraw @a[team=yellow] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲得了永久鋒利I！","color":"aqua"}]
execute as @s[team=yellow] unless score yellow_sharp num matches 1.. as @a[team=yellow] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=yellow] run scoreboard players set yellow_sharp num 1

execute as @s[team=green] if score green_sharp num matches 1.. run give @s diamond{game:1b} 8
execute as @s[team=green] unless score green_sharp num matches 1.. run tellraw @a[team=green] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲得了永久鋒利I！","color":"aqua"}]
execute as @s[team=green] unless score green_sharp num matches 1.. as @a[team=green] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=green] run scoreboard players set green_sharp num 1
