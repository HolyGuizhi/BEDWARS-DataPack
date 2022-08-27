#Guizhi

give @s[scores={drop_diamond=64..}] diamond{game:1b} 64
scoreboard players remove @s[scores={drop_diamond=64..}] drop_diamond 64
give @s[scores={drop_diamond=32..}] diamond{game:1b} 32
scoreboard players remove @s[scores={drop_diamond=32..}] drop_diamond 32
give @s[scores={drop_diamond=16..}] diamond{game:1b} 16
scoreboard players remove @s[scores={drop_diamond=16..}] drop_diamond 16
give @s[scores={drop_diamond=8..}] diamond{game:1b} 8
scoreboard players remove @s[scores={drop_diamond=8..}] drop_diamond 8
give @s[scores={drop_diamond=4..}] diamond{game:1b} 4
scoreboard players remove @s[scores={drop_diamond=4..}] drop_diamond 4
give @s[scores={drop_diamond=2..}] diamond{game:1b} 2
scoreboard players remove @s[scores={drop_diamond=2..}] drop_diamond 2
give @s[scores={drop_diamond=1..}] diamond{game:1b} 1
scoreboard players remove @s[scores={drop_diamond=1..}] drop_diamond 1

scoreboard players reset @s drop_diamond
