#Guizhi

scoreboard players set start_cooldown num 1

# Check
function bedwars:check

# Initial func
execute if score start num matches 0 run function bedwars:before_start
