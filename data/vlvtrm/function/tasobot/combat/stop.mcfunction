tag @s remove tasobot.combat
tag @s remove tasobot.pvp

puppet @s actions run minecraft:swap_slot 8
execute if entity @s[tag=!tasobot.party,tag=!tasobot.party1,tag=!tasobot.party2] run puppet @s actions run minecraft:sprint false