local legacy_import = require("legacy_import")
---@param event ConfigurationChangedData
script.on_configuration_changed(function(event)
    legacy_import.adopt("Flow Control")
    if storage.migrated_valves then return end
    local old_version = event.old_version
    if not old_version then return end
    local major = tonumber(old_version:match("^0*(%d+)"))
    if not (major and major < 2) then return end

    if remote.interfaces.valves and remote.interfaces.valves.rebuild_all then
        -- Older Valves releases use hidden companion entities.
        remote.call("valves", "rebuild_all")
    else
        -- Valves 3 uses native valve prototypes. The JSON migration already
        -- converts the old Flow Control entities/items and the engine resets
        -- recipe unlocks; there are no hidden entities or rebuild interface.
        for _, name in ipairs({"valves-overflow", "valves-top_up", "valves-one_way"}) do
            local prototype = prototypes.entity[name]
            if not prototype or prototype.type ~= "valve" then
                -- Valves is optional. Leave migration pending if absent.
                return
            end
        end
    end
    storage.migrated_valves = true
end)

script.on_init(function() legacy_import.adopt("Flow Control") end)
