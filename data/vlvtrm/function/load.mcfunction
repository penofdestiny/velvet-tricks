#This function will run on world loading or data pack loading

#Scoreboards
scoreboard objectives add vlvtrm.join minecraft.custom:minecraft.leave_game
scoreboard objectives add tasobot.heatriser dummy
scoreboard objectives add vlvtrm.food food
scoreboard objectives add tasobot.cd.food dummy

scoreboard players set @a[tag=tasobot] tasobot.heatriser 0
scoreboard players add @a[tag=tasobot] tasobot.cd.food 0

#General
puppet tasobot join
puppet tasobot1 join
puppet tasobot2 join
puppet tasobot3 join
puppet tasobot4 join
puppet tasobot5 join
puppet tasobot6 join
puppet tasobot7 join
puppet tasobot8 join
puppet ButterflyI join
execute as tasobot run say Custom Velvet Protocol initialised!