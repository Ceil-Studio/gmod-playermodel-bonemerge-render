AddCSLuaFile("1d6b165c9fcb5829a4666f1b8e0c_config.lua")
include("1d6b165c9fcb5829a4666f1b8e0c_config.lua")


hook.Add("PlayerSetModel", CEIL_PM.ID, function(ply)
    if CEIL_PM.ON then
        ply:SetModel(CEIL_PM["pm"])
        ply:SetPos(Vector("-2027.483398 -2006.796753 -335.968750"))
        ply:SetEyeAngles(Angle("6.710001 -94.515472 0.000000"))
        return true
    end
end)

hook.Add("Think", CEIL_PM.ID, function()

    if CEIL_PM.ON then
        for _, ply in ipairs(player.GetAll()) do
            if not IsValid(ply) then continue end
            if ply:GetModel()~=CEIL_PM["pm"] then
                    ply:SetModel(CEIL_PM["pm"])
                    print("yes")
            end
        end
    end
end)

