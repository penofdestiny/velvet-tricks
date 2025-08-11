tag @s remove tasobot.looking
tag @s remove tasobot.wandering
tag @s remove tasobot.corr

#Follow party member
execute as @s[tag=tasobot.party] run function vlvtrm:tasobot/movement/follow
execute as @s[tag=tasobot.party1] run function vlvtrm:tasobot/movement/follow1
execute as @s[tag=tasobot.party2] run function vlvtrm:tasobot/movement/follow2