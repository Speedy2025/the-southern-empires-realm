scoreboard players operation #se.ontime_seconds se.ontime = @s se.ontime
scoreboard players operation #se.ontime_ticks se.ontime = @s se.ontime
scoreboard players operation #se.ontime_minutes se.ontime = @s se.ontime
scoreboard players operation #se.ontime_hours se.ontime = @s se.ontime
scoreboard players operation #se.ontime_days se.ontime = @s se.ontime
scoreboard players operation #se.ontime_ticks se.ontime %= #const.20 tse_constant
scoreboard players operation #se.ontime_seconds se.ontime /= #const.20 tse_constant
scoreboard players operation #se.ontime_seconds se.ontime %= #const.60 tse_constant
scoreboard players operation #se.ontime_minutes se.ontime /= #const.20 tse_constant
scoreboard players operation #se.ontime_minutes se.ontime /= #const.60 tse_constant
scoreboard players operation #se.ontime_minutes se.ontime %= #const.60 tse_constant
scoreboard players operation #se.ontime_hours se.ontime /= #const.20 tse_constant
scoreboard players operation #se.ontime_hours se.ontime /= #const.60 tse_constant
scoreboard players operation #se.ontime_hours se.ontime /= #const.60 tse_constant
scoreboard players operation #se.ontime_hours se.ontime %= #const.24 tse_constant
scoreboard players operation #se.ontime_days se.ontime /= #const.20 tse_constant
scoreboard players operation #se.ontime_days se.ontime /= #const.60 tse_constant
scoreboard players operation #se.ontime_days se.ontime /= #const.60 tse_constant
scoreboard players operation #se.ontime_days se.ontime /= #const.24 tse_constant

tellraw @s [{text:"",color:"dark_aqua"},{score:{name:"#se.ontime_days",objective:"se.ontime"},color:gold}," Day(s) ",{score:{name:"#se.ontime_hours",objective:"se.ontime"},color:gold}," Hour(s) ",{score:{name:"#se.ontime_minutes",objective:"se.ontime"},color:gold}," Minute(s) ",{score:{name:"#se.ontime_seconds",objective:"se.ontime"},color:gold}," Second(s)"]