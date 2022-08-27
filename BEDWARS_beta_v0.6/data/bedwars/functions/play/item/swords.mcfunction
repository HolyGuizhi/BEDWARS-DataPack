#Guizhi

scoreboard players reset @s Tmp

execute store success score @s Tmp run clear @s stone_sword{Unbreakable:1b,unsharp:1b,game:1b} 1
execute if score @s Tmp matches 1 run clear @s wooden_sword
execute if score @s Tmp matches 1 run give @s stone_sword{Unbreakable:1b,unsharp:1b,game:1b}

execute store success score @s Tmp run clear @s iron_sword{Unbreakable:1b,unsharp:1b,game:1b} 1
execute if score @s Tmp matches 1 run clear @s wooden_sword
execute if score @s Tmp matches 1 run give @s iron_sword{Unbreakable:1b,unsharp:1b,game:1b}

execute store success score @s Tmp run clear @s diamond_sword{Unbreakable:1b,unsharp:1b,game:1b} 1
execute if score @s Tmp matches 1 run clear @s wooden_sword
execute if score @s Tmp matches 1 run give @s diamond_sword{Unbreakable:1b,unsharp:1b,game:1b}
