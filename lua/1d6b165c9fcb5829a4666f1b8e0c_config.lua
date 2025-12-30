CEIL_PM = CEIL_PM or {}

CEIL_PM.ID = "1d6b165c9fcb5829a4666f1b8e0c"

CEIL_PM.Type = "" -- apres chemin si male/female

CEIL_PM["BaseAcces"] = "models/ceil_pm/kb" ---chemin base

CEIL_PM["pm"] = CEIL_PM["BaseAcces"]..CEIL_PM.Type.."/head.mdl"

CEIL_PM["hair"] = nil

CEIL_PM["corp"] = 1

CEIL_PM["table_body_color"] = {
    Vector(0.96*255, 0.80*255, 0.69*255),
    Vector(0.91*255, 0.74*255, 0.60*255),
    Vector(0.76*255, 0.58*255, 0.45*255),
    Vector(0.60*255, 0.43*255, 0.32*255),
    Vector(0.45*255, 0.30*255, 0.22*255),
    Vector(0.30*255, 0.20*255, 0.14*255),
}


CEIL_PM.BodyColor = CEIL_PM["table_body_color"][1]

CEIL_PM.HairColor = {Vector(255,0,0), Vector(123,145,25)}
