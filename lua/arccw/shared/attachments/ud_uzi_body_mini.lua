att.PrintName = "Uzi 8\" Mini Barrel"
att.AbbrevName = "8\" Mini Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "STAP 8\" Turbo Barrel"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Compact frame with a higher firerate."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_uzi_frame"

att.AutoStats = true
att.SortOrder = 8

att.Mult_AccuracyMOA = 2
att.Mult_SightTime = 0.85
att.Mult_Recoil = 1.25
att.Mult_RecoilSide = 1.5
att.Mult_RPM = 1.25
att.Mult_Range = 0.75
att.Mult_HipDispersion = 1.25

att.Add_BarrelLength = -4

att.LHIK = true

att.Override_HoldtypeActive = "pistol"
att.Override_HoldtypeSights = "revolver"

att.Model = "models/weapons/arccw/atts/mini_lhik.mdl"

att.ActivateElements = {"ud_uzi_body_mini"}