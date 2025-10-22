puppet @s actions run minecraft:swap_slot 8
execute if entity @s[tag=!tasobot.party,tag=!tasobot.party1,tag=!tasobot.party2] run puppet @s actions run minecraft:sprint false
#player_ability @s fly false
effect clear @s[tag=tasobot.pvp]
puppet @s[tag=tasobot.pvp] actions run minecraft:interrupt_move_to

tag @s remove tasobot.combat
tag @s remove tasobot.pvp