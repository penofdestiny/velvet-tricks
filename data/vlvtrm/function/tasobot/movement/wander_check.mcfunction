execute if block ~ ~ ~ water run puppet @s actions run minecraft:jump hold
execute unless block ~ ~ ~ water run puppet @s actions run minecraft:jump release
execute if predicate vlvtrm:rng/50p run rotate @s facing entity @e[limit=1,sort=random,type=!glow_item_frame]
execute if predicate vlvtrm:rng/50p run function vlvtrm:tasobot/movement/walk