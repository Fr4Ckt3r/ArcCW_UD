SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Decay"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_m79"
SWEP.ShellModel = "models/weapons/arccw/ud_shells/12.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 0

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 3
SWEP.CamAttachment = 2

-- Fake name --

SWEP.PrintName = "Fake name"

-- True name --

SWEP.TrueName = "M79"

-- Trivia --

SWEP.Trivia_Class = "Grenade Launcher"
SWEP.Trivia_Desc = "long description explaining that this is indeed a gun"
SWEP.Trivia_Manufacturer = "Fake manufacturer"
SWEP.Trivia_Calibre = "40×46mm"
SWEP.Trivia_Mechanism = "Break-action"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1960

-- Weapon slot --

SWEP.Slot = 3

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Springfield Armory"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_m79.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ud_m79.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-7, 4, -5.8),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Damage parameters --

SWEP.Damage = 50
SWEP.DamageMin = 50
SWEP.Range = 40
SWEP.RangeMin = 4
SWEP.Num = 1
SWEP.Penetration = 1

SWEP.ShootEntity = "arccw_udm79_he" -- Placeholder
SWEP.MuzzleVelocity = 1000000

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 1
SWEP.ExtendedClipSize = 1
SWEP.ReducedClipSize = 1

-- Recoil --

SWEP.Recoil = 4
SWEP.RecoilSide = 1

SWEP.RecoilRise = 0.24
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1

SWEP.Sway = 0.5

-- Firerate / Firemodes --

SWEP.Delay = 60 / 220
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.ShootVol = 160
SWEP.ShootPitch = 100

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

-- NPC --

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 210

-- Accuracy --

SWEP.AccuracyMOA = 30
SWEP.HipDispersion = 400
SWEP.MoveDispersion = 100
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "smg1_grenade"

-- Speed multipliers --

SWEP.SpeedMult = 0.92
SWEP.SightedSpeedMult = 0.6
SWEP.SightTime = 0.5
SWEP.ShootSpeedMult = 0.75

-- Length --

SWEP.BarrelLength = 48
SWEP.ExtraSightDist = 20

-- Ironsights / Customization / Poses --

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.IronSightStruct = {
     Pos = Vector(-3.5, -7, 2.6),
     Ang = Angle(-0.4, 0, 0),
     Magnification = 1.1,
     SwitchToSound = "",
}

SWEP.HolsterPos = Vector(-0.5, -4, -3)
SWEP.HolsterAng = Angle(3.5, 7, -20)

SWEP.ActivePos = Vector(0, 1, 1)
SWEP.ActiveAng = Angle(0, 0, -5)

SWEP.CrouchPos = Vector(-4, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -30)

SWEP.BarrelOffsetHip = Vector(0, 0, -3)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

-- Firing sounds --

local path = ")^weapons/arccw_ud/m79/"
local common = ")^weapons/arccw_ud/common/"
SWEP.ShootSound = path .. "fire.ogg"
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
SWEP.DistantShootSound = path .. "fire_dist.ogg"

-- Animations --

SWEP.Hook_Think = ArcCW.UD.ADSReload

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
    },
    ["holster"] = {
        Source = "holster",
    },
    ["fire"] = {
        Source = "fire",
        Time = 20 / 30,
    },
    ["reload"] = {
        Source = "reload",
        Time = 101 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.6,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.5,
        LastClip1OutTime = 1.5,
        SoundTable = {
            {s = path .. "open.ogg",  t = 0.3},
            {s = path .. "remove.ogg",  t = 1},
            {s = path .. "insert.ogg",  t = 1.6}
            -- {
            --     t = 0.6,
            --     e = "muzzleflash_m79",  -- Please add some kind of smoke particle after opening the chamber
            --     att = nil,
            --     mag = 100,
            -- }
        },
    },["reload_shotgun"] = {
        Source = "reload",
        Time = 101 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.6,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.5,
        LastClip1OutTime = 1.5,
        SoundTable = {
            {s = path .. "open.ogg",  t = 0.3},
            {s = path .. "remove.ogg",  t = 1},
            {s = path .. "insert.ogg",  t = 1.6},
            {
                t = 1, ind = 1, bg = 2, -- Empty shell bodygroup
            },
            {
                t = 1.5, ind = 1, bg = 1,
            }
        },
    },
    ["reload_caseless"] = {
        Source = "reload_caseless",
        Time = 101 / 30,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        LHIK = true,
        LHIKIn = 0.74,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.2,
        LHIKOut = 0.6,
        SoundTable = {
            {s = path .. "open.ogg",  t = 0.3},
            {s = path .. "remove.ogg",  t = 1.5},
            -- {
            --     t = 0.6,
            --     e = "muzzleflash_m79",  -- Please add some kind of smoke particle after opening the chamber
            --     att = nil,
            --     mag = 100,
            -- }
        },
    },
}

SWEP.BulletBones = {
    [1] = "m79_grenade",
}

-- Bodygroups --

SWEP.AttachmentElements = {
    ["m79_pirategun"] = {
        VMBodygroups = {{ind = 0, bg = 1}},
    },

    ["m79_nade_1gaugeshell"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
    },
    ["m79_nade_1gaugeshell_empty"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
    },
    ["m79_nade_caseless"] = {
        VMBodygroups = {{ind = 1, bg = 3}},
    },
    ["m79_nade_hornetnest"] = {
        VMBodygroups = {{ind = 1, bg = 4}},
    },
    ["m79_nade_incendiary"] = {
        VMBodygroups = {{ind = 1, bg = 5}},
    },

    ["m79_nostock"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },

    ["m79_rail"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp","optic","sniper_optic"},
        Bone = "m79_front",
        Offset = {
            vpos = Vector(0, -3.6, 1),
            vang = Angle(90, 2, -90),
        },
        InstalledEles = {"m79_rail"},
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Default barrel", -- Placeholder
        Slot = "ud_m79_barrel",
        Bone = "m79_front",
        Offset = {
            vpos = Vector(3.5, -5, -21),
            vang = Angle(90, 2, -90),
        },
    },
    -- {
    --     PrintName = "Muzzle",
    --     DefaultAttName = "Standard Muzzle",
    --     Slot = {"choke", "muzzle_shotgun"},
    --     Bone = "1014_flash",
    --     Offset = {
    --         vpos = Vector(-0.03, -0.05, -0.5),
    --         vang = Angle(90, 0, -90),
    --     },
    -- },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "m79_front",
        Offset = {
            vpos = Vector(0, 0.4, 4),
            vang = Angle(90, 0, -90),
        },
        InstalledEles = {"m79_rail"},
    },
    {
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "m79_front",
        Offset = {
            vpos = Vector(0, 1.7, 9.5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Stock",
        Slot = {"ud_m79_stock"},
        DefaultAttName = "Wooden Stock",
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"BUCK\" #00 Buckshot",
        Slot = "ud_ammo_gl",
    },
    {
        PrintName = "Powder Load",
        Slot = "uc_powder",
        DefaultAttName = "Standard Load"
    },
    {
        PrintName = "Training Package",
        Slot = "uc_tp",
        DefaultAttName = "Basic Training"
    },
    {
        PrintName = "Internals",
        Slot = "uc_fg", -- Fire group
        DefaultAttName = "Standard Internals"
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm"},
        FreeSlot = true,
        Bone = "m79_front",
        Offset = {
            vpos = Vector(0.6, -0.5, 4),
            vang = Angle(90, 0, -90),
        },
    },
}