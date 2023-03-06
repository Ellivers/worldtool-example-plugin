# Called by the load hook (#worldtool:hooks/load)
# Sets up the plugin

scoreboard players add $plugins worldtool 1

scoreboard players add $generalToolPlugins worldtool 1
scoreboard players add $brushToolPlugins worldtool 1
scoreboard players add $blocksPerTickPlugins worldtool 1

execute unless score #plugin.example.version worldtool matches 2 run function worldtool:language/reload
execute unless score #plugin.example.version worldtool matches 2 unless score $version worldtool matches 5.. run tellraw @a {"nbt":"Translation.\"wt_example.warning.outdated\"","storage": "worldtool:storage","color": "gold"}

scoreboard players set #plugin.example.version worldtool 2
