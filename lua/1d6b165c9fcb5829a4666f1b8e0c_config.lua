CEIL_PM = CEIL_PM or {}

CEIL_PM.ID = "1d6b165c9fcb5829a4666f1b8e0c"

CEIL_PM.ON = true

CEIL_PM.Type = "female/" -- apres chemin si male/female

CEIL_PM["BaseAcces"] = "models/ceil_pm/" ---chemin base

-- CEIL_PM["pm"] = CEIL_PM["BaseAcces"]..CEIL_PM.Type.."orugi.mdl"
CEIL_PM["pm"] = "models/moon/jjk_outfits/cp_030_00.mdl"

CEIL_PM["hair"] = nil

CEIL_PM["corp"] = "models/echoes/players/faces/sk_face_male1.mdl"

CEIL_PM["table_body_color"] = {
    Vector(0.96*255, 0.80*255, 0.69*255),
    Vector(0.91*255, 0.74*255, 0.60*255),
    Vector(0.76*255, 0.58*255, 0.45*255),
    Vector(0.60*255, 0.43*255, 0.32*255),
    Vector(0.45*255, 0.30*255, 0.22*255),
    Vector(0.30*255, 0.20*255, 0.14*255),
    Vector(255, 0, 0)
}


CEIL_PM.BodyColor = CEIL_PM["table_body_color"][7]
CEIL_PM.BodyPilosityColor = Vector(255,0,255)

CEIL_PM.HairColor = {Vector(255,0,0), Vector(255,145,25)}
