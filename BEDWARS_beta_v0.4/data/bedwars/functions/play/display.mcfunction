#Guizhi

scoreboard players set BLUE: display 6
scoreboard players set RED: display 5
scoreboard players set YELLOW: display 4
scoreboard players set GREEN: display 3

execute store result score blue_alive num run execute if entity @e[tag=blue_bed]
execute store result score red_alive num run execute if entity @e[tag=red_bed]
execute store result score yellow_alive num run execute if entity @e[tag=yellow_bed]
execute store result score green_alive num run execute if entity @e[tag=green_bed]

execute if score blue_alive num matches 1.. run team modify display_blue_display suffix {"text":" ✓","color":"green","bold":true}
execute if score red_alive num matches 1.. run team modify display_red_display suffix {"text":" ✓","color":"green","bold":true}
execute if score yellow_alive num matches 1.. run team modify display_yellow_display suffix {"text":" ✓","color":"green","bold":true}
execute if score green_alive num matches 1.. run team modify display_green_display suffix {"text":" ✓","color":"green","bold":true}

execute unless score blue_alive num matches 1.. store result score blue_alive Tmp run execute if entity @a[team=blue]
execute unless score red_alive num matches 1.. store result score red_alive Tmp run execute if entity @a[team=red]
execute unless score yellow_alive num matches 1.. store result score yellow_alive Tmp run execute if entity @a[team=yellow]
execute unless score green_alive num matches 1.. store result score green_alive Tmp run execute if entity @a[team=green]

execute unless score blue_alive num matches 1.. if score blue_alive Tmp matches 5.. run team modify display_blue_display suffix {"text":" 4+","color":"green"}
execute unless score red_alive num matches 1.. if score red_alive Tmp matches 5.. run team modify display_red_display suffix {"text":" 4+","color":"green"}
execute unless score yellow_alive num matches 1.. if score yellow_alive Tmp matches 5.. run team modify display_yellow_display suffix {"text":" 4+","color":"green"}
execute unless score green_alive num matches 1.. if score green_alive Tmp matches 5.. run team modify display_green_display suffix {"text":" 4+","color":"green"}

execute unless score blue_alive num matches 1.. if score blue_alive Tmp matches 4 run team modify display_blue_display suffix {"text":" 4","color":"green"}
execute unless score red_alive num matches 1.. if score red_alive Tmp matches 4 run team modify display_red_display suffix {"text":" 4","color":"green"}
execute unless score yellow_alive num matches 1.. if score yellow_alive Tmp matches 4 run team modify display_yellow_display suffix {"text":" 4","color":"green"}
execute unless score green_alive num matches 1.. if score green_alive Tmp matches 4 run team modify display_green_display suffix {"text":" 4","color":"green"}

execute unless score blue_alive num matches 1.. if score blue_alive Tmp matches 3 run team modify display_blue_display suffix {"text":" 3","color":"green"}
execute unless score red_alive num matches 1.. if score red_alive Tmp matches 3 run team modify display_red_display suffix {"text":" 3","color":"green"}
execute unless score yellow_alive num matches 1.. if score yellow_alive Tmp matches 3 run team modify display_yellow_display suffix {"text":" 3","color":"green"}
execute unless score green_alive num matches 1.. if score green_alive Tmp matches 3 run team modify display_green_display suffix {"text":" 3","color":"green"}

execute unless score blue_alive num matches 1.. if score blue_alive Tmp matches 2 run team modify display_blue_display suffix {"text":" 2","color":"green"}
execute unless score red_alive num matches 1.. if score red_alive Tmp matches 2 run team modify display_red_display suffix {"text":" 2","color":"green"}
execute unless score yellow_alive num matches 1.. if score yellow_alive Tmp matches 2 run team modify display_yellow_display suffix {"text":" 2","color":"green"}
execute unless score green_alive num matches 1.. if score green_alive Tmp matches 2 run team modify display_green_display suffix {"text":" 2","color":"green"}

execute unless score blue_alive num matches 1.. if score blue_alive Tmp matches 1 run team modify display_blue_display suffix {"text":" 1","color":"green"}
execute unless score red_alive num matches 1.. if score red_alive Tmp matches 1 run team modify display_red_display suffix {"text":" 1","color":"green"}
execute unless score yellow_alive num matches 1.. if score yellow_alive Tmp matches 1 run team modify display_yellow_display suffix {"text":" 1","color":"green"}
execute unless score green_alive num matches 1.. if score green_alive Tmp matches 1 run team modify display_green_display suffix {"text":" 1","color":"green"}

execute unless score blue_alive num matches 1.. unless score blue_alive Tmp matches 1.. run team modify display_blue_display suffix {"text":" X","color":"red"}
execute unless score red_alive num matches 1.. unless score red_alive Tmp matches 1.. run team modify display_red_display suffix {"text":" X","color":"red"}
execute unless score yellow_alive num matches 1.. unless score yellow_alive Tmp matches 1.. run team modify display_yellow_display suffix {"text":" X","color":"red"}
execute unless score green_alive num matches 1.. unless score green_alive Tmp matches 1.. run team modify display_green_display suffix {"text":" X","color":"red"}
