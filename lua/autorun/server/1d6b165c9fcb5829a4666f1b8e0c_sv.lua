AddCSLuaFile("1d6b165c9fcb5829a4666f1b8e0c_config.lua")
include("1d6b165c9fcb5829a4666f1b8e0c_config.lua")


hook.Add("PlayerSetModel", CEIL_PM.ID, function(ply)
    ply:SetModel(CEIL_PM["pm"])
    return true
end)

