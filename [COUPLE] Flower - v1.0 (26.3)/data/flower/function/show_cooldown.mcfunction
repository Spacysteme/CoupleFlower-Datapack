scoreboard players operation @s flower_sec = @s flower_cooldown
scoreboard players add @s flower_sec 19
scoreboard players operation @s flower_sec /= #20 flower_const
scoreboard players operation @s flower_min = @s flower_sec
scoreboard players operation @s flower_min /= #60 flower_const
scoreboard players operation @s flower_sec %= #60 flower_const

scoreboard players operation @s flower_bar = #max flower_const
scoreboard players operation @s flower_bar -= @s flower_cooldown
scoreboard players operation @s flower_bar /= #step flower_const

data modify storage flower:tmp pad set value ""
execute if score @s flower_sec matches 0..9 run data modify storage flower:tmp pad set value "0"

execute store result storage flower:tmp n int 1 run scoreboard players get @s flower_bar
function flower:bar_pick with storage flower:tmp
function flower:actionbar with storage flower:tmp
