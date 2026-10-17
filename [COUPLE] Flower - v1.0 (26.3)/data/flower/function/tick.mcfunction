execute as @a[scores={flower_cooldown=1..}] run scoreboard players remove @s flower_cooldown 1

execute as @a[scores={flower_cooldown=1..}] if items entity @s weapon.mainhand #flower:gift_flowers run function flower:show_cooldown

execute as @a[scores={flower_sneak=1..},gamemode=!spectator] unless score @s flower_cooldown matches 1.. at @s if entity @a[distance=0.1..3,gamemode=!spectator] run tag @s add flower_try
execute if entity @a[tag=flower_try] run schedule function flower:late 1t

scoreboard players set @a flower_sneak 0
