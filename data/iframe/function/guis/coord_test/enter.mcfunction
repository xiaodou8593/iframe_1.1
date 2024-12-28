#iframe:guis/coord_test/enter

function iframe:player_space/_get
execute store result score cnt int if data storage iframe:io player.coord_result[]
execute if score cnt int matches 1 as 0-0-0-0-0 run function iframe:guis/coord_test/place_glass_suc

function iframe:guis/coord_test/items