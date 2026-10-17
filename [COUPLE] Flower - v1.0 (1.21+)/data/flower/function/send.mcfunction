tag @p[distance=0.1..3,gamemode=!spectator] add flower_target

execute as @a[tag=flower_target,limit=1] run function flower:check_space
execute unless entity @a[tag=flower_target,tag=flower_space] run return run function flower:inventory_full

scoreboard players operation @s flower_cooldown = #max flower_const

item modify entity @s weapon.mainhand flower:remove_one
$give @a[tag=flower_target,limit=1] $(id) 1

$tellraw @a [{"text":"✿ ","color":"$(color)"},{"selector":"@s","color":"white"},{"text":" gave $(article) ","color":"gray"},{"text":"$(name)","color":"$(color)","bold":true},{"text":" to ","color":"gray"},{"selector":"@a[tag=flower_target,limit=1]","color":"white"}]

title @a[tag=flower_target] subtitle [{"text":"From ","color":"white"},{"selector":"@s"},{"text":" !"}]
$title @a[tag=flower_target] title {"text":"✿ $(name) ✿","color":"$(color)"}

execute at @a[tag=flower_target] run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 1.4
execute at @a[tag=flower_target] run particle minecraft:cherry_leaves ~ ~1 ~ 0.4 0.5 0.4 0.02 20

tag @a remove flower_target
tag @a remove flower_space
