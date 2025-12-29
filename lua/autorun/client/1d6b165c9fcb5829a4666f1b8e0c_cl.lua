include("1d6b165c9fcb5829a4666f1b8e0c_config.lua")

local function ApplyColors(ply)
    if not IsValid(ply) then return end

    local col = CEIL_PM.BodyColor
    local vec = Vector(col[1]/255, col[2]/255, col[3]/255)

    ply:SetPlayerColor(vec)

    if IsValid(ply.Body) then
        ply.Body.GetPlayerColor = function()
            return vec
        end
    end

    local haircol = CEIL_PM.HairColor[2]
    local hairvec = Vector(haircol[1]/255, haircol[2]/255, haircol[3]/255)

    if IsValid(ply.Hair) then

        ply.Hair.GetPlayerColor = function()
            return vec
        end

        ply.Hair.GetPlayerHairColor = function()
            return hairvec
        end


    end
end

local function CreateHair(ply)

    if IsValid(ply.Hair) then
        if ply.Hair:GetModel()~="models/mha_mika/ceil_pm/"..CEIL_PM.Type.."/hair/" .. CEIL_PM.hair .. ".mdl" then
            ply.Hair:Remove()
        end
    end

    if IsValid(ply.Hair) then return end



    local hair = ClientsideModel(
        "models/mha_mika/ceil_pm/"..CEIL_PM.Type.."/hair/" .. CEIL_PM.hair .. ".mdl",
        RENDERGROUP_OPAQUE
    )

    hair:SetParent(ply)
    hair:AddEffects(EF_BONEMERGE + EF_BONEMERGE_FASTCULL)
    hair:SetNoDraw(false)

    ply.Hair = hair
end

local function CreateBody(ply)

    if IsValid(ply.Body) then
        if ply.Body:GetModel()~="models/mha_mika/ceil_pm/"..CEIL_PM.Type.."/tenue/" .. CEIL_PM.corp .. ".mdl" then
            ply.Body:Remove()
        end
    end
    if IsValid(ply.Body) then return end

    local body = ClientsideModel(
        "models/mha_mika/ceil_pm/"..CEIL_PM.Type.."/tenue/" .. CEIL_PM.corp .. ".mdl",
        RENDERGROUP_OPAQUE
    )

    body:SetParent(ply)
    body:AddEffects(EF_BONEMERGE + EF_BONEMERGE_FASTCULL)
    body:SetNoDraw(false)

    ply.Body = body
end

hook.Add("Think", CEIL_PM.ID, function()
    for _, ply in ipairs(player.GetAll()) do
        if not IsValid(ply) then continue end

        CreateHair(ply)
        CreateBody(ply)
        ApplyColors(ply)
    end
end)



hook.Add("PostPlayerDraw", CEIL_PM.ID, function(ply)
    ply:SetPlayerColor(Vector(CEIL_PM.BodyColor[1]/255, CEIL_PM.BodyColor[2]/255, CEIL_PM.BodyColor[3]/255))
end)
