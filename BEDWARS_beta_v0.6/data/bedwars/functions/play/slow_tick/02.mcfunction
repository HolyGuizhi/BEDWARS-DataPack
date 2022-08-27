#Guizhi

# Display
function bedwars:play/display

# Spawnpoints
execute at @e[team=blue,tag=spawn,limit=1] run spawnpoint @a[team=blue] ~ ~ ~
execute at @e[team=red,tag=spawn,limit=1] run spawnpoint @a[team=red] ~ ~ ~
execute at @e[team=yellow,tag=spawn,limit=1] run spawnpoint @a[team=yellow] ~ ~ ~
execute at @e[team=green,tag=spawn,limit=1] run spawnpoint @a[team=green] ~ ~ ~

# 屬性
execute if score attack_speed num matches 0 as @a run attribute @s generic.attack_speed base set 100.0
execute as @a run attribute @s generic.attack_damage base set 2.5

# Next
schedule function bedwars:play/slow_tick/03 1t
