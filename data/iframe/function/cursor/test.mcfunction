#iframe:cursor/test

execute as @e[tag=iframe_cursor] run function iframe:cursor/_del

data modify storage iframe:io input set value "iframe:guis/template"
function iframe:_enter

data modify storage iframe:io input set from storage iframe:class default_cursor
function iframe:cursor/_new
execute as @e[tag=iframe_cursor] on passengers run say 1

function iframe:_exit