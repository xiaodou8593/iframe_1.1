#iframe:guis/get_coord/enter

function iframe:player_space/_get

execute unless data storage iframe:io player.get_coord_reach_dis run function iframe:guis/get_coord/load_default
function iframe:guis/get_coord/items
data modify storage iframe:io player.last_slot set from storage iframe:io slot

function iframe:player_space/_store