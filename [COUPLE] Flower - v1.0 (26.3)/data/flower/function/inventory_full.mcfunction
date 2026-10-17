title @s actionbar [{"selector":"@a[tag=flower_target,limit=1]","color":"white"},{"text":"'s inventory is full!","color":"red"}]
title @a[tag=flower_target] actionbar [{"text":"Your inventory is full! ","color":"red"},{"selector":"@s","color":"white"},{"text":" can't give you a flower.","color":"gray"}]

tag @a remove flower_target
tag @a remove flower_space
