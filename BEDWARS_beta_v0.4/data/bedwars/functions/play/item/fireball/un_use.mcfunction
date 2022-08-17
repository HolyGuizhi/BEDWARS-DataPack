#Guizhi

clear @s carrot_on_a_stick{fireball:1b}

execute if score @s fireball_count matches 64.. run give @s fire_charge{game:1b} 64
execute if score @s fireball_count matches 64.. run scoreboard players remove @s fireball_count 64
execute if score @s fireball_count matches 64.. run give @s fire_charge{game:1b} 64
execute if score @s fireball_count matches 64.. run scoreboard players remove @s fireball_count 64
execute if score @s fireball_count matches 32.. run give @s fire_charge{game:1b} 32
execute if score @s fireball_count matches 32.. run scoreboard players remove @s fireball_count 32
execute if score @s fireball_count matches 16.. run give @s fire_charge{game:1b} 16
execute if score @s fireball_count matches 16.. run scoreboard players remove @s fireball_count 16
execute if score @s fireball_count matches 8.. run give @s fire_charge{game:1b} 8
execute if score @s fireball_count matches 8.. run scoreboard players remove @s fireball_count 8
execute if score @s fireball_count matches 4.. run give @s fire_charge{game:1b} 4
execute if score @s fireball_count matches 4.. run scoreboard players remove @s fireball_count 4
execute if score @s fireball_count matches 2.. run give @s fire_charge{game:1b} 2
execute if score @s fireball_count matches 2.. run scoreboard players remove @s fireball_count 2
execute if score @s fireball_count matches 1.. run give @s fire_charge{game:1b} 1
execute if score @s fireball_count matches 1.. run scoreboard players remove @s fireball_count 1
