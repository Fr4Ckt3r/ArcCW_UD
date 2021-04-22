SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Decay"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.4
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_9mm"
SWEP.ShellPitch = 100

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.CamAttachment = 3
SWEP.TracerNum = 1
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "GEN3"

-- True name --

SWEP.TrueName = "Glock 17"

-- Trivia --

SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "Handgun originally designed by a curtain rod manufacturer to replace the Austrian military's aging arsenal of WW2 handguns. Its design has since become synonymous with the idea of handguns, as its reliable and cost-effective design combined with a switchless trigger safety mechanism gave it a reputation as a weapon of choice for cops and robbers alike around the world."
SWEP.Trivia_Manufacturer = "Next Generation Weapons Inc."
SWEP.Trivia_Calibre = "9x19mm Parabellum"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1982

-- Weapon slot --

SWEP.Slot = 1

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Glock Ges.m.b.H."
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ud_glock.mdl"
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage --

SWEP.Damage = 34 -- 3 shot close range kill
SWEP.DamageMin = 20 -- 5 shot long range kill
SWEP.RangeMin = 10
SWEP.Range = 20
SWEP.Penetration = 2
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 200

-- Mag size --

SWEP.ChamberSize = 1
SWEP.Primary.ClipSize = 17
SWEP.ExtendedClipSize = 33
SWEP.ReducedClipSize = 10

-- Recoil --

SWEP.Recoil = 1.5
SWEP.RecoilSide = 0.5

SWEP.RecoilRise = 0.24
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = 0.5
SWEP.MaxRecoilPunch = 0.6

SWEP.Sway = 1.5

-- Firerate / Firemodes --

SWEP.Delay = 60 / 400
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        PrintName = "LOW",
        Mode = 0,
    }
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 120

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC -- 

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 7
SWEP.HipDispersion = 400
SWEP.MoveDispersion = 800
SWEP.JumpDispersion = 500

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "glock"

-- Speed multipliers --

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.9
SWEP.SightTime = 0.18
SWEP.ShootSpeedMult = 1

-- Length --

SWEP.BarrelLength = 24
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(4.623, -2.211, 1.004)
SWEP.HolsterAng = Angle(-8.443, 28.843, 0)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.IronSightStruct = {
     Pos = Vector(-2.33, 4, 2.8),
     Ang = Angle(0.1, 0, 0),
     Magnification = 1,
     SwitchToSound = "",
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, -3)

SWEP.CustomizePos = Vector(5, -2, -2)
SWEP.CustomizeAng = Angle(15, 25, 0)

SWEP.CrouchPos = Vector(-5, 2, 1)
SWEP.CrouchAng = Angle(0, 0, -45)

SWEP.BarrelOffsetHip = Vector(0, 0, -3)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-10.5, 3.5, -4.5),
    ang        =    Angle(-6, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
}

-- Firing sounds --

local path = "weapons/arccw_ud/glock/"
local common = "weapons/arccw_ud/common/"
SWEP.ShootSound = path .. "fire.ogg"
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
SWEP.DistantShootSound = path .. "fire_dist.ogg"

-- Bodygroups --

SWEP.BulletBones = {
}

SWEP.AttachmentElements = {

    ["ud_glock_10_mag"] = {
        VMBodygroups = {{ind = 2, bg = 1}, {ind = 1, bg = 2}},
    },
    ["ud_glock_33_mag"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
    },
    ["ud_glock_100_mag"] = {
        VMBodygroups = {{ind = 2, bg = 3}},
    },

    ["ud_glock_rail_optic"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
    },
}

-- Animations --

SWEP.Hook_Think = function(wep)
    wep:GetOwner():GetViewModel():SetPoseParameter( "sights", Lerp(wep:GetSightDelta(), 1, 0) ) -- thanks fesiug
end

-- CHAN_ITEM doesn't sound too right
local ci = CHAN_AUTO

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["draw"] = {
        Source = "draw",
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 12 / 30,
    },
    ["holster"] = {
        Source = "holster",
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0,
        LHIKOut = 0,
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = 12 / 30,
        LHIK = true,
        LHIKIn = 0.4,
        LHIKEaseIn = 0.4,
        LHIKEaseOut = 0,
        LHIKOut = 0,
    },
    ["fire"] = {
        Source = "fire",
        Time = 16 / 30,
        ShellEjectAt = 0.03,
    },
    ["fire_empty"] = {
        Source = "fire_empty",
        Time = 16 / 30,
        ShellEjectAt = 0.03,
    },
    ["fire_18"] = {
        Source = "fire",
        Time = 16 / 30,
        ShellEjectAt = 0.03,
    },
    ["fire_empty_18"] = {
        Source = "fire_empty",
        Time = 16 / 30,
        ShellEjectAt = 0.03,
    },

    -- 17 Round Reloads --

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 56 / 30,
        MinProgress = 1.1,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = path .. "magrelease.ogg",    t = 0.3, c = ci},
            {s = path .. "magout.ogg",        t = 0.3, c = ci},
            {s = path .. "magin.ogg",         t = 0.4, c = ci},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 66 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = path .. "magrelease.ogg",    t = 0.15, c = ci},
            {s = path .. "magout.ogg",        t = 0.15, c = ci},
            {s = path .. "magin.ogg",         t = 0.45, c = ci},
            {s = path .. "sliderel.ogg",      t = 1.45, c = ci},
        },
    },

    -- 10 Round Reloads --

    ["reload_10"] = {
        Source = "reload_10",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 56 / 30,
        MinProgress = 1.1,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = path .. "magrelease.ogg",    t = 0.3, c = ci},
            {s = path .. "magout.ogg",        t = 0.3, c = ci},
            {s = path .. "magin.ogg",         t = 0.4, c = ci},
        },
    },
    ["reload_empty_10"] = {
        Source = "reload_empty_10",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 66 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = path .. "magrelease.ogg",    t = 0.15, c = ci},
            {s = path .. "magout.ogg",        t = 0.15, c = ci},
            {s = path .. "magin.ogg",         t = 0.45, c = ci},
            {s = path .. "sliderel.ogg",      t = 1.45, c = ci},
        },
    },

    -- 33 Round Reloads --

    ["reload_33"] = {
        Source = "reload_33",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 56 / 30,
        MinProgress = 1.1,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = path .. "magrelease.ogg",    t = 0.4, c = ci},
            {s = path .. "magout.ogg",        t = 0.4, c = ci},
            {s = path .. "magin.ogg",         t = 0.52, c = ci},
        },
    },
    ["reload_empty_33"] = {
        Source = "reload_empty_33",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 66 / 30,
        MinProgress = 1.5,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = path .. "magrelease.ogg",    t = 0.16, c = ci},
            {s = path .. "magout.ogg",        t = 0.16, c = ci},
            {s = path .. "magin.ogg",         t = 0.46, c = ci},
            {s = path .. "sliderel.ogg",      t = 1.46, c = ci},
        },
    },

    -- 100 Round Reloads --

    ["reload_100"] = {
        Source = "reload_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 56 / 30,
        MinProgress = 1.3,
        LastClip1OutTime = 0.9,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = path .. "magrelease.ogg",    t = 0.3, c = ci},
            {s = path .. "magout.ogg",        t = 0.3, c = ci},
            {s = path .. "magin.ogg",         t = 0.63, c = ci},
        },
    },
    ["reload_empty_100"] = {
        Source = "reload_empty_100",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 66 / 30,
        MinProgress = 1.75,
        LastClip1OutTime = 0.7,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKEaseIn = 0.2,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.3,
        SoundTable = {
            {s = path .. "magrelease.ogg",      t = 0.12, c = ci},
            {s = path .. "magout.ogg",          t = 0.12, c = ci},
            {s = path .. "magin.ogg",           t = 0.43, c = ci},
            {s = path .. "sliderel_deact.ogg",  t = 1.3, c = ci},
            {s = path .. "sliderel.ogg",        t = 1.545, c = ci},
        },
    },
}

SWEP.AutosolveSourceSeq = "idle"

SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp","optic"},
        Bone = "glock_parent",
        Offset = {
            vpos = Vector(0, -3.5, 2),
            vang = Angle(90, 2, -90),
        },
        InstalledEles = {"ud_glock_rail_optic"},
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Standard Barrel",
        Slot = "ud_glock_barrel",
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "glock_flash",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip"},
        Bone = "glock_parent",
        Offset = {
            vpos = Vector(0, -1.3, 5),
            vang = Angle(90, 0, -90),
        },
        MergeSlots = {4,5},
    },
    {
        Hidden = true,
        PrintName = "Tactical",
        Slot = {"tac_pistol"},
        Bone = "glock_parent",
        Offset = {
            vpos = Vector(0, -1.3, 5),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Mag Type",
        Slot = {"ud_glock_mag"},
        DefaultAttName = "17-Round G17 Mag",
    },
    {
        PrintName = "Ammo Type",
        Slot = {"go_ammo"},
    },
    {
        PrintName = "Training Package",
        Slot = "ud_training",
        DefaultAttName = "Basic Training"
    },
    {
        PrintName = "Internals",
        Slot = "ud_fg", -- Fire group
        DefaultAttName = "Standard Internals"
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm"},
        FreeSlot = true,
        Bone = "Body",
        Offset = {
            vpos = Vector(0.6, -4, 4),
            vang = Angle(90, 0, -90),
        },
    },
}