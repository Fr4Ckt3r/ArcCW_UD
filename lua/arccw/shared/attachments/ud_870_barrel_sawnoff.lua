att.PrintName = "Express-12 12\" Sawn-off Barrel"
att.AbbrevName = "12\" Sawn-off Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Remington 870 12\" Sawn-off Barrel"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Hand-made short barrel with no sights. More agile and has a bigger pellet spread."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.nofs",
}
att.Desc_Neutrals = {
}
att.Slot = "ud_870_barrel"

att.AutoStats = true
att.SortOrder = -1

att.Mult_AccuracyMOA = 1.5
att.Mult_Recoil = 1.25
att.Mult_Range = 0.8

att.Mult_Sway = 0.5
att.Mult_SightTime = 0.75
att.Mult_SpeedMult = 1.05

att.Add_BarrelLength = -4

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and !wep.Attachments[1].Installed then
        data.add = data.add + 250
    end
end

att.ActivateElements = {"ud_870_barrel_sawnoff"}