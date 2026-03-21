-- =================================================
-- Custom animations registry
-- Documentation: 
-- https://docs.bln-studio.com/docs/bln_hud.html#custom-animations
-- =================================================

CustomAnimations = {
    -- Example:
    ['custom_smoke_quick'] = function(metadata, cb)
        metadata = metadata or {}
        local ped = PlayerPedId()
        local propModel = metadata.propModel or "p_cigarette01x"
        local dict = "amb_rest@world_human_smoking@male_c@idle_a"
        local anim = "idle_a"

        RequestAnimDict(dict)
        while not HasAnimDictLoaded(dict) do
            Wait(100)
        end

        TaskPlayAnim(ped, dict, anim, 2.0, 2.0, -1, 31, 0, false, false, false)
        -- Example here: you can attach `propModel` to the right hand..etc
        Wait(3500)

        ClearPedSecondaryTask(ped)

        if cb then cb() end
    end,
}