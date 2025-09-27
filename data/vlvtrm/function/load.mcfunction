#This function will run on world loading or data pack loading

#Scoreboards
scoreboard objectives add vlvtrm.join minecraft.custom:minecraft.leave_game
scoreboard objectives add vlvtrm.food food
scoreboard objectives add tasobot.cd.food dummy

scoreboard players add @a[tag=tasobot] tasobot.cd.food 0

#General
execute positioned -5174 240 -276 run function vlvtrm:tasobot/utils/spawnall
execute positioned -5159 240 -264 run puppet fatedtenshi spawn
execute as tasobot run say Custom Velvet Protocol initialised!