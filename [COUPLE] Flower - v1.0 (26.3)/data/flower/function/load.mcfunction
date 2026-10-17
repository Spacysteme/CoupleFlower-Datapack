scoreboard objectives add flower_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add flower_cooldown dummy
scoreboard objectives add flower_const dummy
scoreboard objectives add flower_min dummy
scoreboard objectives add flower_sec dummy
scoreboard objectives add flower_bar dummy

scoreboard players set #10 flower_const 10
scoreboard players set #20 flower_const 20
scoreboard players set #60 flower_const 60

# CHANGE COOLDOWN DURATION (in ticks): 6000 = 5min
scoreboard players set #max flower_const 6000
scoreboard players operation #step flower_const = #max flower_const
scoreboard players operation #step flower_const /= #10 flower_const

data modify storage flower:data full set value ["","█","██","███","████","█████","██████","███████","████████","█████████","██████████"]
data modify storage flower:data empty set value ["██████████","█████████","████████","███████","██████","█████","████","███","██","█",""]

tellraw @a [{"text":"[COUPLE] Flower","color":"light_purple"},{"text":" loaded successfully! 🌸","color":"white"}]
