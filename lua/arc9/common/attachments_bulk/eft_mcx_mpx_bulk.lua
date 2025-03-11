local ATT = {}


///////////////////////////////////////      eft_mcx_ch

ATT = {}

ATT.PrintName = "MCX charging handle"
ATT.CompactName = "MCX"
ATT.Icon = Material("entities/eft_mcx_attachments/mcxch.png", "mips smooth")
ATT.Description = [[A standard charging handle for SIG Sauer MCX rifles and compatible systems.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBolt = true

ATT.Category = {"eft_mcx_charge"}

ARC9.LoadAttachment(ATT, "eft_mcx_ch")


///////////////////////////////////////      eft_mcx_rec


ATT = {}

ATT.PrintName = "MCX GEN1 .300 BLK upper receiver"
ATT.CompactName = "MCX GEN1"
ATT.Icon = Material("entities/eft_mcx_attachments/mcxrec.png", "mips smooth")
ATT.Description = [[An upper receiver for the first generation MCX assault rifles manufactured by SIG Sauer. Features a mount for attaching additional equipment.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasReceiver = true
ATT.HasBufferTube = true -- we using 

ATT.Category = {"eft_mcx_upper"}

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
-- ATT.RecoilMult = 0.99
-- ATT.VisualRecoilMult = 0.99
-- ATT.HeatCapacityMult = 0.989

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_large", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(2.2, 0, -2.49),
        Ang = Angle(0, 0, 0),
        ExcludeElements = {"IronsBlockingSight"},
    },
    {
        PrintName = "Rear sight",
        Category = {"eft_ar_rearsight", "eft_rearsight", "eft_rearsight_hk416"},
        Pos = Vector(5, 0, -2.49),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Barrel",
        Category = "eft_mcx_barrel",
        Pos = Vector(-0.175, 0, -0.9),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-0.2, 0, 0),
    },
    {
        PrintName = "Handguard",
        Category = "eft_mcx_hguard",
        Pos = Vector(-0.69, 0, -0.01),
        Ang = Angle(0, 90, 0),
        Icon_Offset = Vector(0, 1.75, 1),
    },

    {
        PrintName = "Backup",
        Category = {"eft_backupmount"},
        Pos = Vector(-1.5, 0, -2.49),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "Top Tactical",
        Category = {"eft_tactical_top"},
        RejectAttachments = { ["eft_tactical_xc1"] = true },
        Pos = Vector(-4.75, 0, -2.49),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    -- add mrp45 and tac thing
}

ARC9.LoadAttachment(ATT, "eft_mcx_rec")



///////////////////////////////////////      eft_mcx_barrel171

ATT = {}

ATT.PrintName = "MCX .300 BLK 171mm barrel"
ATT.CompactName = "MCX 171mm"
ATT.Icon = Material("entities/eft_mcx_attachments/171.png", "mips smooth")
ATT.Description = [[A 171mm barrel for MCX-based weapons, chambered in .300 BLK.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

ATT.BarrelLengthAdd = 2

ATT.Category = {"eft_mcx_barrel"}

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 1.06
ATT.PhysBulletMuzzleVelocityMult = 0.839
ATT.Spread = 3.27 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_171mm"}

ATT.Attachments = {
    {
        PrintName = "Gas block",
        Category = "eft_mcx_gasblock",
        Pos = Vector(-4.75, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        Category = {"eft_mcx_muzzle", "eft_gemtechmount", "eft_dthybrid"},
        RejectAttachments = { ["eft_muzzle_ar10_qdc_sup"] = true },
        -- Category = "eft_ar15_muzzle",
        Pos = Vector(-6.65, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mcx_barrel171")

///////////////////////////////////////      eft_mcx_barrel229

ATT = {}

ATT.PrintName = "MCX .300 BLK 229mm barrel"
ATT.CompactName = "MCX 229mm"
ATT.Icon = Material("entities/eft_mcx_attachments/229.png", "mips smooth")
ATT.Description = [[A 229mm barrel for MCX-based weapons, chambered in .300 BLK.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

ATT.BarrelLengthAdd = 2

ATT.MuzzleEffectQCA = 5
ATT.Category = {"eft_mcx_barrel"}

ATT.EFTErgoAdd = -6
ATT.CustomCons = { Ergonomics = "-6" }
ATT.RecoilMult = 0.95
ATT.VisualRecoilMult = 0.95
ATT.HeatCapacityMult = 1.02
ATT.PhysBulletMuzzleVelocityMult = 0.839
ATT.Spread = 2.75 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_229mm"}

ATT.Attachments = {
    {
        PrintName = "Gas block",
        Category = "eft_mcx_gasblock",
        Pos = Vector(-4.75, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Muzzle",
        Category = "eft_mcx_muzzle",
        -- Category = "eft_ar15_muzzle",
        Pos = Vector(-8.05, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mcx_barrel229")


///////////////////////////////////////      eft_mcx_gb

ATT = {}

ATT.PrintName = "MCX gas block"
ATT.CompactName = "MCX block"
ATT.Icon = Material("entities/eft_mcx_attachments/mcxgb.png", "mips smooth")
ATT.Description = [[A gas block designed for the MCX assault rifles, manufactured by SIG Sauer.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasGas = true

ATT.Category = {"eft_mcx_gasblock"}

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97

ARC9.LoadAttachment(ATT, "eft_mcx_gb")


///////////////////////////////////////      eft_mcx_hg_12

ATT = {}

ATT.PrintName = "MCX GEN1 KeyMod 12 inch handguard"
ATT.CompactName = "MCX 12\""
ATT.Icon = Material("entities/eft_mcx_attachments/mcx12hg.png", "mips smooth")
ATT.Description = [[A first-gen 12 inch handguard for the MCX assault rifle, equipped with a KeyMod interface for attaching additional equipment. Manufactured by SIG Sauer.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mcx_sig_gen1_12inch.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.962
ATT.Category = {"eft_mcx_hguard"}

-- ATT.ExcludeElements = {"barrel_260mm", "eft_silencer_r43_556","eft_gas_ar15_rg", "eft_gas_ar15_m4fs"}


ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = {"eft_frontsight"},
        Pos = Vector(0, 11.0, -2.47),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "L Keymod",
        Category = {"eft_mount_keymod2","eft_mount_keymod_casv4"},
        Pos = Vector(-1.1, 9.4, -0.89),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "R Keymod",
        Category = {"eft_mount_keymod2","eft_mount_keymod_casv4"},
        Pos = Vector(1.1, 9.4, -0.89),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "B Keymod",
        Category = {"eft_mount_keymod6", "eft_grip_keymod"},
        Pos = Vector(0, 4.2, 0.18),
        Ang = Angle(0, -90, -90),   
    },
}

ARC9.LoadAttachment(ATT, "eft_mcx_hg_12")

///////////////////////////////////////      eft_mcx_hg_8

ATT = {}

ATT.PrintName = "MCX GEN1 KeyMod 8 inch handguard"
ATT.CompactName = "MCX 8\""
ATT.Icon = Material("entities/eft_mcx_attachments/mcx8hg.png", "mips smooth")
ATT.Description = [[A first-gen 8 inch handguard for the MCX assault rifle, equipped with a KeyMod interface for attaching additional equipment. Manufactured by SIG Sauer.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mcx_sig_gen1_8_inch.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 9
ATT.CustomPros = { Ergonomics = "+9" }
-- ATT.RecoilMult = 0.99
-- ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.973
ATT.Category = {"eft_mcx_hguard"}

-- ATT.ExcludeElements = {"barrel_260mm", "eft_silencer_r43_556","eft_gas_ar15_rg", "eft_gas_ar15_m4fs"}


ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = {"eft_frontsight"},
        Pos = Vector(0, 6.7, -2.47),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "L Keymod",
        Category = {"eft_mount_keymod2","eft_mount_keymod_casv4"},
        Pos = Vector(-0.85, 5.05, -0.89),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "R Keymod",
        Category = {"eft_mount_keymod2","eft_mount_keymod_casv4"},
        Pos = Vector(0.85, 5.05, -0.89),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "B Keymod",
        Category = {"eft_mount_keymod6", "eft_grip_keymod"},
        Pos = Vector(0, 4.1, 0.18),
        Ang = Angle(0, -90, -90),   
    },
}

ARC9.LoadAttachment(ATT, "eft_mcx_hg_8")


///////////////////////////////////////      eft_mcx_stock_colap

ATT = {}

ATT.PrintName = "MPX/MCX collapsing/telescoping stock"
ATT.CompactName = "MPX/MCX"
ATT.Description = [[A telescopic retractable stock for early issues of MCX/MPX manufactured by SIG Sauer.

note: it cannot collapse in actual game but why not! i want it be collapsable]]
ATT.Icon = Material("entities/eft_mcx_attachments/tele.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_all_sig_mpx_mcx_early_type.mdl"
ATT.ModelOffset = Vector(0.1, 0, 0.42)

ATT.ToggleStats = {
    {
        PrintName = "Extended",
        RecoilMult = 0.74,
        VisualRecoilMult = 0.74,
        HasStock = true
    },
    {
        PrintName = "Collapsed",
        EFTFoldStock = true
    },
}

ATT.DrawFunc = function(swep, model)
    if swep:GetValue("EFTFoldStock") then
        -- model:SetBodygroup(0, swep:GetClass() == "arc9_eft_mpx" and 2 or 1)
        model:SetBodygroup(0, 1)
    else
        model:SetBodygroup(0, 0)
    end
end

ATT.EFTErgoAdd = 17
ATT.CustomPros = { Ergonomics = "+17", ["Recoil while extended"] = "-26%" }

ATT.SortOrder = 0
ATT.Category = "eft_mcx_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"

ARC9.LoadAttachment(ATT, "eft_mcx_stock_colap")

///////////////////////////////////////      eft_mcx_stock_brace

ATT = {}

ATT.PrintName = "MPX/MCX SB Tactical Pistol Stabilizing Brace"
ATT.CompactName = "MPX brace"
ATT.Description = [[A telescopic retractable brace stock for MCX/MPX manufactured by SB Tactical.

note: it cannot collapse in actual game but why not! i want it be collapsable]]
ATT.Icon = Material("entities/eft_mcx_attachments/brace.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_all_sig_mpx_brace.mdl"
ATT.ModelOffset = Vector(0.1, 0, 0.42)

ATT.ToggleStats = {
    {
        PrintName = "Extended",
        RecoilMult = 0.84,
        VisualRecoilMult = 0.84,
        HasStock = true
    },
    {
        PrintName = "Collapsed",
        EFTFoldStock = true
    },
}

ATT.DrawFunc = function(swep, model)
    if swep:GetValue("EFTFoldStock") then
        -- model:SetBodygroup(0, swep:GetClass() == "arc9_eft_mpx" and 2 or 1)
        model:SetBodygroup(0, 1)
    else
        model:SetBodygroup(0, 0)
    end
end

ATT.EFTErgoAdd = 12
ATT.CustomPros = { Ergonomics = "+12", ["Recoil while extended"] = "-16%" }

ATT.SortOrder = 0
ATT.Category = "eft_mcx_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"

ARC9.LoadAttachment(ATT, "eft_mcx_stock_brace")

///////////////////////////////////////      eft_mcx_stock_adap

ATT = {}

ATT.PrintName = "MPX/MCX retractable stock pipe adapter"
ATT.CompactName = "MPX/MCX"
ATT.Description = [[An adapter for attaching telescopic tube stocks to the rail mount, manufactured by SIG Sauer.]]
ATT.Icon = Material("entities/eft_mcx_attachments/adap.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_all_sig_folding_knuckle.mdl"

-- ATT.HasStock = true

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.SortOrder = 0
ATT.Category = "eft_mcx_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Attachments = {
    {
        PrintName = "Buffer Tube",
        Category = {"eft_ar15_buffertube", "eft_ar15_buffertube_notbuffer"},
        Pos = Vector(1.87, 0, -0.23),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-0.2, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mcx_stock_adap")

///////////////////////////////////////      eft_mcx_stock_cqb

ATT = {}

ATT.PrintName = "MPX/MCX Maxim Defense CQB telescoping stock"
ATT.CompactName = "MPX/MCX CQB"
ATT.Description = [[A telescopic retractable CQB stock for MPX/MCX weapons, manufactured by Maxim Defense.]]
ATT.Icon = Material("entities/eft_mcx_attachments/cqb.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_mpx_maxim_defence_cqb_stock.mdl"

ATT.HasStock = true

ATT.RecoilMult = 0.7
ATT.VisualRecoilMult = 0.7

ATT.EFTErgoAdd = 15
ATT.CustomPros = { Ergonomics = "+15" }

ATT.SortOrder = 0
ATT.Category = "eft_mcx_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"

ARC9.LoadAttachment(ATT, "eft_mcx_stock_cqb")

///////////////////////////////////////      eft_mcx_stock_light

ATT = {}

ATT.PrintName = "MPX/MCX lightweight stock"
ATT.CompactName = "MPX/MCX light"
ATT.Description = [[A thin and lightweight stock for MCX/MPX manufactured by SIG Sauer.]]
ATT.Icon = Material("entities/eft_mcx_attachments/light.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_all_sig_thin_folding_stock.mdl"

ATT.HasStock = true

ATT.RecoilMult = 0.69
ATT.VisualRecoilMult = 0.69

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.SortOrder = 0
ATT.Category = "eft_mcx_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"

ARC9.LoadAttachment(ATT, "eft_mcx_stock_light")

///////////////////////////////////////      eft_mcx_stock_tele

ATT = {}

ATT.PrintName = "MPX/MCX telescoping stock"
ATT.CompactName = "MPX/MCX tele"
ATT.Description = [[A telescopic stock for MPX/MCX manufactured by SIG Sauer.]]
ATT.Icon = Material("entities/eft_mcx_attachments/tele2.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_all_sig_telescoping_stock.mdl"

ATT.HasStock = true

ATT.RecoilMult = 0.71
ATT.VisualRecoilMult = 0.71

ATT.EFTErgoAdd = 10
ATT.CustomPros = { Ergonomics = "+10" }

ATT.SortOrder = 0
ATT.Category = "eft_mcx_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"

ARC9.LoadAttachment(ATT, "eft_mcx_stock_tele")

///////////////////////////////////////      eft_mcx_stock_ulss

ATT = {}

ATT.PrintName = "MPX/MCX PMM ULSS foldable stock"
ATT.CompactName = "ULSS"
ATT.Description = [[ULSS (UltraLight Skeleton Stock) is a foldable stock for MCX/MPX manufactured by Parker Mountain Machine.]]
ATT.Icon = Material("entities/eft_mcx_attachments/ulss.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_mpx_pmm_ulss.mdl"

ATT.HasStock = true

ATT.RecoilMult = 0.67
ATT.VisualRecoilMult = 0.67

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }

ATT.SortOrder = 0
ATT.Category = "eft_mcx_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"

ARC9.LoadAttachment(ATT, "eft_mcx_stock_ulss")













--        MPX!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!










///////////////////////////////////////      eft_mpx_ch_1x

ATT = {}

ATT.PrintName = "MPX single latch charging handle"
ATT.CompactName = "MPX 1x"
ATT.Icon = Material("entities/eft_mcx_attachments/1x.png", "mips smooth")
ATT.Description = [[A retracting handle with one latch for MPX-based weapons. Manufactured by SIG Sauer.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBolt = true

ATT.Category = {"eft_mpx_charge"}

ARC9.LoadAttachment(ATT, "eft_mpx_ch_1x")

///////////////////////////////////////      eft_mpx_ch_2x

ATT = {}

ATT.PrintName = "MPX double latch charging handle"
ATT.CompactName = "MPX 2x"
ATT.Icon = Material("entities/eft_mcx_attachments/2x.png", "mips smooth")
ATT.Description = [[A retracting handle with two latches for MPX-based weapons. Manufactured by SIG Sauer.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBolt = true

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.Category = {"eft_mpx_charge"}

ARC9.LoadAttachment(ATT, "eft_mpx_ch_2x")

///////////////////////////////////////      eft_mpx_ch_sch

ATT = {}

ATT.PrintName = "MPX Geissele SCH charging handle"
ATT.CompactName = "MPX SCH"
ATT.Icon = Material("entities/eft_mcx_attachments/sch.png", "mips smooth")
ATT.Description = [[The SCH (Super Charging Handle) charging handle with two latches for MPX-based weapons, manufactured by Geissele.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBolt = true

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.Category = {"eft_mpx_charge"}

ARC9.LoadAttachment(ATT, "eft_mpx_ch_sch")

///////////////////////////////////////      eft_mpx_ch_2x2

ATT = {}

ATT.PrintName = "MPX GEN 2 ambidextrous charging handle"
ATT.CompactName = "MPX 2x GEN2"
ATT.Icon = Material("entities/eft_mcx_attachments/2x2.png", "mips smooth")
ATT.Description = [[n ambidextrous charging handle with two latches for the second generation of the MPX SMG. Manufactured by SIG Sauer.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBolt = true

ATT.EFTErgoAdd = 1.5
ATT.CustomPros = { Ergonomics = "+1.5" }

ATT.Category = {"eft_mpx_charge"}

ARC9.LoadAttachment(ATT, "eft_mpx_ch_2x2")

///////////////////////////////////////      eft_mpx_rec


ATT = {}

ATT.PrintName = "MPX GEN1 9x19 upper receiver"
ATT.CompactName = "MPX GEN1"
ATT.Icon = Material("entities/eft_mcx_attachments/mpxrec.png", "mips smooth")
ATT.Description = [[A 1st generation upper receiver for the SIG MPX submachine gun, manufactured by SIG Sauer. Features a mount for attaching additional equipment.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasReceiver = true

ATT.Category = {"eft_mpx_upper"}

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
-- ATT.RecoilMult = 0.99
-- ATT.VisualRecoilMult = 0.99
-- ATT.HeatCapacityMult = 0.989

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_large", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(2.92, 0, -2.71),
        Ang = Angle(0, 0, 0),
        ExcludeElements = {"IronsBlockingSight"},
    },
    {
        PrintName = "Rear sight",
        Category = {"eft_rearsight"},
        Pos = Vector(5.5, 0, -2.71),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Barrel",
        Category = "eft_mpx_barrel",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0.8, 0, 1.3),
    },
    {
        PrintName = "Handguard",
        Category = "eft_mpx_hguard",
        Pos = Vector(-0.65, 0, -0.192),
        Ang = Angle(0, 90, 0),
        Icon_Offset = Vector(0, 1.75, 1),
    },

    {
        PrintName = "Top Tactical",
        Category = {"eft_tactical_top", "eft_backupmount"},
        Pos = Vector(-1.2, 0, -2.71),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    -- add mrp45 and tac thing
}

ARC9.LoadAttachment(ATT, "eft_mpx_rec")

///////////////////////////////////////      eft_mpx_barrel105

ATT = {}

ATT.PrintName = "MPX 9x19 10.5 inch barrel"
ATT.CompactName = "MPX 10.5\""
ATT.Icon = Material("entities/eft_mcx_attachments/105.png", "mips smooth")
ATT.Description = [[A 10.5 inch (265mm) long barrel for MPX-based weapons chambered in 9x19 ammo.]]
ATT.SortOrder = 265
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_265mm.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 2
ATT.MuzzleEffectQCA = 7

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -7
ATT.CustomCons = { Ergonomics = "-7" }
ATT.RecoilMult = 0.96
ATT.VisualRecoilMult = 0.96
ATT.HeatCapacityMult = 1.03
-- ATT.PhysBulletMuzzleVelocityMult = 0.84
ATT.Spread = 4.3 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_265mm"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_9mm_muzzle", "eft_mpx_muzzle"},
        Pos = Vector(-9.95, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel105")

///////////////////////////////////////      eft_mpx_barrel355

ATT = {}

ATT.PrintName = "MPX 9x19 14 inch barrel"
ATT.CompactName = "MPX 14\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpx14.png", "mips smooth")
ATT.Description = [[A 14 inch (355mm) long barrel for MPX-based weapons chambered in 9x19 ammo.]]
ATT.SortOrder = 355
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_355mm.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 4
ATT.MuzzleEffectQCA = 8

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -14
ATT.CustomCons = { Ergonomics = "-14" }
ATT.RecoilMult = 0.93
ATT.VisualRecoilMult = 0.93
ATT.HeatCapacityMult = 1.06
ATT.PhysBulletMuzzleVelocityMult = 1.04
ATT.Spread = 1.38 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_355mm"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_9mm_muzzle", "eft_mpx_muzzle", "eft_taccom"},
        Pos = Vector(-13.52, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel355")

///////////////////////////////////////      eft_mpx_barrel203

ATT = {}

ATT.PrintName = "MPX 9x19 203mm barrel"
ATT.CompactName = "MPX 203mm"
ATT.Icon = Material("entities/eft_mcx_attachments/mpx203.png", "mips smooth")
ATT.Description = [[A 203mm long barrel for MPX-based weapons chambered for 9x19 ammunition.]]
ATT.SortOrder = 203
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_203mm.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 4
ATT.MuzzleEffectQCA = 6

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -6
ATT.CustomCons = { Ergonomics = "-6" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 1.03
ATT.PhysBulletMuzzleVelocityMult = 0.877
ATT.Spread = 5.16 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_203mm"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_9mm_muzzle", "eft_mpx_muzzle", "eft_taccom"},
        Pos = Vector(-7.47, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel203")

///////////////////////////////////////      eft_mpx_barrel114

ATT = {}

ATT.PrintName = "MPX 9x19 4.5 inch barrel"
ATT.CompactName = "MPX 4.5\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpx45.png", "mips smooth")
ATT.Description = [[A 4.5 inch (114mm) long barrel for MPX-based weapons chambered in 9x19 ammo.]]
ATT.SortOrder = 114
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_114mm.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 1

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
-- ATT.RecoilMult = 0.97
-- ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 1.06
ATT.PhysBulletMuzzleVelocityMult = 0.84
ATT.Spread = 8.59 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_114mm"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_9mm_muzzle", "eft_mpx_muzzle", "eft_taccom"},
        Pos = Vector(-3.82, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel114")

///////////////////////////////////////      eft_mpx_barrel165

ATT = {}

ATT.PrintName = "MPX 9x19 6.5 inch barrel"
ATT.CompactName = "MPX 6.5\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpx65.png", "mips smooth")
ATT.Description = [[A 6.5 inch (165mm) long barrel for MPX-based weapons chambered in 9x19 ammo.]]
ATT.SortOrder = 165
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_165mm.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 2
ATT.MuzzleEffectQCA = 5

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 1.04
ATT.PhysBulletMuzzleVelocityMult = 0.9
ATT.Spread = 6.88 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_165mm"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_9mm_muzzle", "eft_mpx_muzzle", "eft_taccom"},
        Pos = Vector(-5.9, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel165")

///////////////////////////////////////      eft_mpx_barrel165sd

ATT = {}

ATT.PrintName = "MPX-SD 9x19 165mm ported barrel"
ATT.CompactName = "MPX-SD 6.5\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpxsd.png", "mips smooth")
ATT.Description = [[A special 165mm long barrel for the MPX-SD. Chambered for 9x19 ammunition.]]
ATT.SortOrder = 165
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_165mm_ported.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 2
-- ATT.MuzzleEffectQCA = 7

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98
ATT.HeatCapacityMult = 1.04
ATT.PhysBulletMuzzleVelocityMult = 0.838
ATT.Spread = 6.19 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_165mm_sd"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_mpxsd_muzzle"},
        Pos = Vector(-5.9, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel165sd")

///////////////////////////////////////      eft_mpx_sd_silencer

ATT = {}

ATT.PrintName = "MPX-SD 9x19 integrated sound suppressor"
ATT.CompactName = "MPX-SD"
ATT.Icon = Material("entities/eft_mcx_attachments/mpxsup.png", "mips smooth")
ATT.Description = [[An integrated sound suppressor manufactured by SIG Sauer for the special "silent" version of the MPX, designated as MPX-SD.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.RecoilMult = 0.85
ATT.VisualRecoilMult = 0.85
ATT.PhysBulletMuzzleVelocityMult = 1.0075
ATT.HeatCapacityMult = 0.87

ATT.Silencer = true 
ATT.BarrelLengthAdd = 3
ATT.MuzzleEffectQCA = 9

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/silencer_sig_mpx_sd.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 4

ATT.Category = {"eft_mpxsd_muzzle"}

ARC9.LoadAttachment(ATT, "eft_mpx_sd_silencer")

///////////////////////////////////////      eft_mpx_barrel121ronin

ATT = {}

ATT.PrintName = "MPX 9x19 Ronin Arms 4.75 inch Ported SD Barrel"
ATT.CompactName = "MPX-SD 4.75\""
ATT.Icon = Material("entities/eft_mcx_attachments/br8.png", "mips smooth")
ATT.Description = [[A 4.75 inch ported barrel from the MPX-SD conversion kit designed for installation of the special suppressor. Manufactured by Ronin Arms.]]
ATT.SortOrder = 121
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_165mm_ported.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 2
-- ATT.MuzzleEffectQCA = 7

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
-- ATT.RecoilMult = 0.98
-- ATT.VisualRecoilMult = 0.98
-- ATT.HeatCapacityMult = 1.04
ATT.PhysBulletMuzzleVelocityMult = 0.838
ATT.Spread = 8.35 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_165mm_sd"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_mpxsd_ronin8_muzzle"},
        Pos = Vector(-5.9, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel121ronin")

///////////////////////////////////////      eft_mpx_sd_silencer_ronin8

ATT = {}

ATT.PrintName = "MPX 9x19 Ronin Arms 8 inch SD Suppressor"
ATT.CompactName = "Ronin 8"
ATT.Icon = Material("entities/eft_mcx_attachments/r8.png", "mips smooth")
ATT.Description = [[An 8 inch suppressor from the MPX-SD conversion kit designed for installation over the custom ported barrel. Manufactured by Ronin Arms.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.91
ATT.VisualRecoilMult = 0.91
ATT.PhysBulletMuzzleVelocityMult = 1.0075
ATT.HeatCapacityMult = 0.87

ATT.Silencer = true 
ATT.BarrelLengthAdd = 3
ATT.MuzzleEffectQCA = 7

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/silencer_sig_mpx_sd.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 4

ATT.Category = {"eft_mpxsd_ronin8_muzzle"}

ARC9.LoadAttachment(ATT, "eft_mpx_sd_silencer_ronin8")

///////////////////////////////////////      eft_mpx_barrel171ronin

ATT = {}

ATT.PrintName = "MPX 9x19 Ronin Arms 6.75 inch Ported SD Barrel"
ATT.CompactName = "MPX-SD 6.75\""
ATT.Icon = Material("entities/eft_mcx_attachments/br12.png", "mips smooth")
ATT.Description = [[A 6.75 inch ported barrel from the MPX-SD conversion kit designed for installation of the special suppressor. Manufactured by Ronin Arms.]]
ATT.SortOrder = 171
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasBarrel = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_mpx_165mm_ported.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 2
ATT.BarrelLengthAdd = 2
-- ATT.MuzzleEffectQCA = 7

ATT.Category = {"eft_mpx_barrel"}

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98
-- ATT.HeatCapacityMult = 1.04
ATT.PhysBulletMuzzleVelocityMult = 0.838
ATT.Spread = 6.6 * ARC9.MOAToAcc

ATT.ActivateElements = {"barrel_171mm_sd"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_mpxsd_ronin12_muzzle"},
        Pos = Vector(-5.9, 0, -1.12),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_barrel171ronin")

///////////////////////////////////////      eft_mpx_sd_silencer_ronin12

ATT = {}

ATT.PrintName = "MPX 9x19 Ronin Arms 12 inch SD Suppressor"
ATT.CompactName = "Ronin 12"
ATT.Icon = Material("entities/eft_mcx_attachments/r12.png", "mips smooth")
ATT.Description = [[An 12 inch suppressor from the MPX-SD conversion kit designed for installation over the custom ported barrel. Manufactured by Ronin Arms.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -7
ATT.CustomCons = { Ergonomics = "-7" }
ATT.RecoilMult = 0.87
ATT.VisualRecoilMult = 0.91
ATT.PhysBulletMuzzleVelocityMult = 1.0075
ATT.HeatCapacityMult = 0.87

ATT.Silencer = true 
ATT.BarrelLengthAdd = 4
ATT.MuzzleEffectQCA = 8

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true

-- ATT.Model = "models/weapons/arc9/darsu_eft/mods/silencer_sig_mpx_sd.mdl"
-- ATT.MuzzleDevice = true
-- ATT.MuzzleDevice_Priority = 4

ATT.Category = {"eft_mpxsd_ronin12_muzzle"}

ARC9.LoadAttachment(ATT, "eft_mpx_sd_silencer_ronin12")


-- ronin 8, 12 barrels and their silencers


///////////////////////////////////////      eft_mpx_hg_gen1

ATT = {}

ATT.PrintName = "MPX GEN1 6 inch handguard"
ATT.CompactName = "MPX GEN1 6\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpxhg1.png", "mips smooth")
ATT.Description = [[ A 6 inch handguard for the first generation of the SIG Sauer MPX SMG.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_sig_mpx_gen1.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }
-- ATT.RecoilMult = 0.99
-- ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.976
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_114mm", 
}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = {"eft_frontsight"},
        Pos = Vector(0, 4.9, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "L MPX Mount",
        Category = {"eft_mount_mpx2"},
        Pos = Vector(-1.035, 3.28, -0.9),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "R MPX Mount",
        Category = {"eft_mount_mpx2"},
        Pos = Vector(1.035, 3.28, -0.9),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "B MPX Mount",
        Category = {"eft_mount_mpx4"},
        Pos = Vector(0, 3.31, 0.1),
        Ang = Angle(0, -90, -90),   
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_gen1")

///////////////////////////////////////      eft_mpx_hg_105

ATT = {}

ATT.PrintName = "MPX Midwest Industries 10.5 inch M-LOK handguard"
ATT.CompactName = "MPX Midwest 10.5\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpxhg105.png", "mips smooth")
ATT.Description = [[The Midwest Industries 10.5 inch length foregrip for the MPX SMGs equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_midwest_105_inch_m_lok.mdl"
ATT.ModelAngleOffset = Angle(0, -90, 0)
-- ATT.LHIK = true 
ATT.EFTErgoAdd = 9
ATT.CustomPros = { Ergonomics = "+9" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98
ATT.HeatCapacityMult = 0.964
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_165mm", 
    "barrel_165mm_sd", 
    "barrel_114mm", 
    "barrel_203mm",
}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = {"eft_frontsight"},
        Pos = Vector(0, 9.5, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1.06, 7.65-2.5, 0.3-1.1),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1.06, 7.65-2.5, 0.3-1.1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK R2",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0.75, 9.25 - 1.5, 0.85 -1),
        Ang = Angle(180, 90, 45),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L2",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-0.75, 9.25- 1.5, 0.85-1),
        Ang = Angle(0, -90, -45),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 3, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Top Tactical",
        Category = {"eft_tactical_top", "eft_backupmount"},
        Pos = Vector(0, 6.5, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_105")

///////////////////////////////////////      eft_mpx_hg_14

ATT = {}

ATT.PrintName = "MPX Midwest Industries 14 inch M-LOK handguard"
ATT.CompactName = "MPX Midwest 14\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpxhg14.png", "mips smooth")
ATT.Description = [[The Midwest Industries 14 inch length foregrip for the MPX SMGs equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_midwest_14_inch_m_lok.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }
ATT.RecoilMult = 0.96
ATT.VisualRecoilMult = 0.96
ATT.HeatCapacityMult = 0.952
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_165mm", 
    "barrel_165mm_sd", 
    "barrel_114mm", 
    "barrel_203mm",
    "barrel_265mm"
}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = {"eft_frontsight"},
        Pos = Vector(0, 9.5+3.5, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1.06, 7.65-1.5, 0.3-1.1),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1.06, 7.65-1.5, 0.3-1.1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK R2",
        Category = {"eft_mount_mlok",},
        Pos = Vector(0.75, 9.25, 0.85 -1),
        Ang = Angle(180, 90, 45),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L2",
        Category = {"eft_mount_mlok",},
        Pos = Vector(-0.75, 9.25, 0.85-1),
        Ang = Angle(0, -90, -45),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK R3",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0.95, 11, -0.3-1.02),
        Ang = Angle(180, 90, -20),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L3",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-0.95, 11, -0.3-1.02),
        Ang = Angle(0, -90, 20),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 3.5, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK B2",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset", "eft_mount_mlok_bipod"},
        Pos = Vector(0, 11.5, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Top Tactical",
        Category = {"eft_tactical_top", "eft_backupmount"},
        Pos = Vector(0, 6.5+2, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_14")

///////////////////////////////////////      eft_mpx_hg_45

ATT = {}

ATT.PrintName = "MPX Midwest Industries 4.5 inch M-LOK handguard"
ATT.CompactName = "MPX Midwest 4.5\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpxhg45.png", "mips smooth")
ATT.Description = [[The Midwest Industries 4.5 inch length foregrip for the MPX SMGs equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_midwest_45_inch_m_lok.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 15
ATT.CustomPros = { Ergonomics = "+15" }
-- ATT.RecoilMult = 0.96
-- ATT.VisualRecoilMult = 0.96
ATT.HeatCapacityMult = 1.009
ATT.Category = {"eft_mpx_hguard"}

-- ATT.ExcludeElements = {"barrel_260mm", "eft_silencer_r43_556","eft_gas_ar15_rg", "eft_gas_ar15_m4fs"}


ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = {"eft_frontsight"},
        Pos = Vector(0, 3.25, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1.06, 4-2.25, 0.3-1.1),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1.06, 4-2.25, 0.3-1.1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },

    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0, 4-2.25, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_45")

///////////////////////////////////////      eft_mpx_hg_65

ATT = {}

ATT.PrintName = "MPX Midwest Industries 6.5 inch M-LOK handguard"
ATT.CompactName = "MPX Midwest 6.5\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpxhg65.png", "mips smooth")
ATT.Description = [[The Midwest Industries 6.5 inch length foregrip for the MPX SMGs equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_midwest_65_inch_m_lok.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 10
ATT.CustomPros = { Ergonomics = "+10" }
-- ATT.RecoilMult = 0.96
-- ATT.VisualRecoilMult = 0.96
ATT.HeatCapacityMult = 1.02
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_165mm_sd", 
    "barrel_114mm",
}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = {"eft_frontsight"},
        Pos = Vector(0, 5.1, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1.06, 6-2.0, 0.3-1.05),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1.06, 6-2.0, 0.3-1.05),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 2.75, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_65")

///////////////////////////////////////      eft_mpx_hg_14oem

ATT = {}

ATT.PrintName = "MPX Lancer OEM 14 inch M-LOK handguard"
ATT.CompactName = "MPX OEM 14\""
ATT.Icon = Material("entities/eft_mcx_attachments/mpxhg14oem.png", "mips smooth")
ATT.Description = [[The Lancer OEM 14 inch length foregrip for the MPX SMGs equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_lancer_oem_14_inch.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 12
ATT.CustomPros = { Ergonomics = "+12" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 1.025
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_165mm", 
    "barrel_165mm_sd", 
    "barrel_114mm", 
    "barrel_203mm",
    "barrel_265mm"
}

local meowoffset = Vector(0, -0.5, -0.9)

ATT.Attachments = {
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1, 8.1, 0.0) + meowoffset,
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1, 8.1, 0.0) + meowoffset,
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK R2",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0.75, 10.5, 0.7) + meowoffset,
        Ang = Angle(180, 90, 45),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L2",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-0.75, 10.5, 0.7) + meowoffset,
        Ang = Angle(0, -90, -45),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 4, 1) + meowoffset,
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK B2",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset", "eft_mount_mlok_bipod"},
        Pos = Vector(0, 12.5, 1) + meowoffset,
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_14oem")


///////////////////////////////////////      eft_mpx_hg_gen1_4

ATT = {}

ATT.PrintName = "MPX GEN1 4 inch handguard"
ATT.CompactName = "MPX GEN1 4\""
ATT.Icon = Material("entities/eft_mcx_attachments/g14.png", "mips smooth")
ATT.Description = [[A 4 inch handguard for the first generation of the SIG Sauer MPX SMG.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_sig_mpx_gen1_4_inch.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 9
ATT.CustomPros = { Ergonomics = "+9" }
-- ATT.RecoilMult = 0.99
-- ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.976
ATT.Category = {"eft_mpx_hguard"}


ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = {"eft_frontsight"},
        Pos = Vector(0, 4.9-1.6, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "L MPX Mount",
        Category = {"eft_mount_mpx2"},
        Pos = Vector(-1.035, 3.28-1.6, -0.9),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "R MPX Mount",
        Category = {"eft_mount_mpx2"},
        Pos = Vector(1.035, 3.28-1.6, -0.9),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "B MPX Mount",
        Category = {"eft_mount_mpx2"},
        Pos = Vector(0, 3.31-1.64, 0.1),
        Ang = Angle(0, -90, -90),   
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_gen1_4")

///////////////////////////////////////      eft_mpx_hg_gen1_8

ATT = {}

ATT.PrintName = "MPX GEN1 8 inch handguard"
ATT.CompactName = "MPX GEN1 8\""
ATT.Icon = Material("entities/eft_mcx_attachments/g18.png", "mips smooth")
ATT.Description = [[A 8 inch handguard for the first generation of the SIG Sauer MPX SMG.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_sig_mpx_gen1_8_inch.mdl"
ATT.ModelAngleOffset = Angle(0, -90, 0)
-- ATT.LHIK = true 
ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.RecoilMult = 0.985
ATT.VisualRecoilMult = 0.985
ATT.HeatCapacityMult = 0.976
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_114mm", 
    "barrel_165mm", 
}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = {"eft_frontsight"},
        Pos = Vector(0, 4.9+1.6, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "L MPX Mount",
        Category = {"eft_mount_mpx2"},
        Pos = Vector(-1.035, 3.28+1.6, -0.9),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "R MPX Mount",
        Category = {"eft_mount_mpx2"},
        Pos = Vector(1.035, 3.28+1.6, -0.9),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "B MPX Mount",
        Category = {"eft_mount_mpx4"},
        Pos = Vector(0, 3.31, 0.1),
        Ang = Angle(0, -90, -90),   
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_gen1_8")


///////////////////////////////////////      eft_mpx_hg_gen2_4

ATT = {}

ATT.PrintName = "MPX GEN2 4 inch M-LOK handguard"
ATT.CompactName = "MPX GEN2 4\""
ATT.Icon = Material("entities/eft_mcx_attachments/g24.png", "mips smooth")
ATT.Description = [[A 4 inch handguard for the second generation of the SIG Sauer MPX SMG equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_sig_mpx_gen2_4_inch_m_lok.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 10
ATT.CustomPros = { Ergonomics = "+10" }
ATT.RecoilMult = 0.995
ATT.VisualRecoilMult = 0.995
ATT.Category = {"eft_mpx_hguard"}


ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = {"eft_frontsight"},
        Pos = Vector(0, 3.25, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1.06, 4-1.75, 0.3-1.25),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1.06, 4-1.75, 0.3-1.25),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },

    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0, 4-1.75, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_gen2_4")

///////////////////////////////////////      eft_mpx_hg_gen2_6

ATT = {}

ATT.PrintName = "MPX GEN2 6 inch M-LOK handguard"
ATT.CompactName = "MPX GEN2 6\""
ATT.Icon = Material("entities/eft_mcx_attachments/g26.png", "mips smooth")
ATT.Description = [[A 6 inch handguard for the second generation of the SIG Sauer MPX SMG equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_sig_mpx_gen2_6_inch_m_lok.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }
ATT.RecoilMult = 0.985
ATT.VisualRecoilMult = 0.985
ATT.HeatCapacityMult = 1.02
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_114mm",
}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = {"eft_frontsight"},
        Pos = Vector(0, 4.8, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1.06, 6-2.0, 0.3-1.25),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1.06, 6-2.0, 0.3-1.25),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 2.75, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_gen2_6")

///////////////////////////////////////      eft_mpx_hg_gen2_8

ATT = {}

ATT.PrintName = "MPX GEN2 8 inch M-LOK handguard"
ATT.CompactName = "MPX GEN2 8\""
ATT.Icon = Material("entities/eft_mcx_attachments/g28.png", "mips smooth")
ATT.Description = [[A 8 inch handguard for the second generation of the SIG Sauer MPX SMG equipped with an M-LOK interface for installation of additional devices and accessories.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_mpx_sig_mpx_gen2_8_inch_m_lok.mdl"
ATT.ModelAngleOffset = Angle(0, -90, 0)
-- ATT.LHIK = true 
ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98
ATT.HeatCapacityMult = 1.02
ATT.Category = {"eft_mpx_hguard"}

ATT.ExcludeElements = {
    "barrel_165mm_sd", 
    "barrel_114mm",
    "barrel_165mm",
}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = {"eft_frontsight"},
        Pos = Vector(0, 6.5, -2.71+0.192+0.02),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(1.06, 7.65-2.5, 0.3-1.25),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-1.06, 7.65-2.5, 0.3-1.25),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 3, 0.1),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mpx_hg_gen2_8")


///////////////////////////////////////      eft_mpx_mag_20

ATT = {}

ATT.PrintName = "MPX 9x19 20-round magazine"
ATT.CompactName = "MPX 20"
ATT.Icon = Material("entities/eft_mcx_attachments/20.png", "mips smooth")
ATT.Description = [[A standard 20-round capacity 9x19mm MPX magazine, manufactured by SIG Sauer.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mpx_20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mpx_20.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 20

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }
ATT.MalfunctionMeanShotsToFailMult = 0.97

ATT.Category = {"eft_mag_mpx"}

ARC9.LoadAttachment(ATT, "eft_mpx_mag_20")

///////////////////////////////////////      eft_mpx_mag_30

ATT = {}

ATT.PrintName = "MPX 9x19 30-round magazine"
ATT.CompactName = "MPX 30"
ATT.Icon = Material("entities/eft_mcx_attachments/30.png", "mips smooth")
ATT.Description = [[A standard 30-round capacity semitransparent 9x19mm MPX magazine, manufactured by SIG Sauer.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mpx_30_tr.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mpx_30.mdl"
ATT.TranslucentPass = true 

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 30

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.MalfunctionMeanShotsToFailMult = 0.95

ATT.Category = {"eft_mag_mpx"}

ATT.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_001",
        "patron_002",
        "patron_003",
        "patron_004",
        "patron_005",
        "patron_006",
        "patron_007",
        "patron_008",
        "patron_009",
        "patron_010",
        "patron_011",
        "patron_012",
        "patron_013",
        "patron_014",
        "patron_015",
        "patron_016",
        "patron_017",
        "patron_018",
        "patron_019",
        "patron_020",
        "patron_021",
        "patron_022",
        "patron_023",
        "patron_024",
        "patron_025",
        "patron_026",
        "patron_027",
        "patron_028",
        "patron_029",
        "patron_030",
        "spring_start",
        "spring_end",
    },
}

ATT.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_001",
    [3] = "patron_002",
    [4] = "patron_003",
    [5] = "patron_004",
    [6] = "patron_005",
    [7] = "patron_006",
    [8] = "patron_007",
    [9] = "patron_008",
    [10] = "patron_009",
    [11] = "patron_010",
    [12] = "patron_011",
    [13] = "patron_012",
    [14] = "patron_013",
    [15] = "patron_014",
    [16] = "patron_015",
    [17] = "patron_016",
    [18] = "patron_017",
    [19] = "patron_018",
    [20] = "patron_019",
    [21] = "patron_020",
    [22] = "patron_021",
    [23] = "patron_022",
    [24] = "patron_023",
    [25] = "patron_024",
    [26] = "patron_025",
    [27] = "patron_026",
    [28] = "patron_027",
    [29] = "patron_028",
    [30] = "patron_029",
    [31] = "patron_030",
    
}

ARC9.LoadAttachment(ATT, "eft_mpx_mag_30")

///////////////////////////////////////      eft_mpx_mag_30_orig

ATT = {}

ATT.PrintName = "MPX 9x19 30-round magazine (original)"
ATT.CompactName = "MPX 30"
ATT.Icon = Material("entities/eft_mcx_attachments/30.png", "mips smooth")
ATT.Description = [[A standard 30-round capacity semitransparent 9x19mm MPX magazine, manufactured by SIG Sauer.

Original non-transparent version like in eft]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mpx_30.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mpx_30.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 30

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.MalfunctionMeanShotsToFailMult = 0.95

ATT.Category = {"eft_mag_mpx"}

ARC9.LoadAttachment(ATT, "eft_mpx_mag_30_orig")

///////////////////////////////////////      eft_mpx_mag_41

ATT = {}

ATT.PrintName = "MPX 9x19 TTI \"Base Pad +11\" 41-round magazine"
ATT.CompactName = "MPX TTI 41"
ATT.Icon = Material("entities/eft_mcx_attachments/41.png", "mips smooth")
ATT.Description = [[A standard 30-round 9x19 MPX magazine that comes with an attached +11-round base pad, produced by Taran Tactical Innovations. This brings the total magazine capacity to 41 rounds.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mpx_41.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mpx_41.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 41

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.MalfunctionMeanShotsToFailMult = 0.958

ATT.Category = {"eft_mag_mpx"}

ARC9.LoadAttachment(ATT, "eft_mpx_mag_41")

///////////////////////////////////////      eft_mpx_mag_50

ATT = {}

ATT.PrintName = "MPX 9x19 F5 MFG 50-round drum magazine"
ATT.CompactName = "MPX Drum 50"
ATT.Icon = Material("entities/eft_mcx_attachments/50.png", "mips smooth")
ATT.Description = [[An MPX 9x19 drum magazine with a 50-round capacity. Manufactured by F5 MFG.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mpx_50.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mpx_50.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 50

ATT.DropMagazineTime = 0.67

ATT.EFTErgoAdd = -15
ATT.CustomCons = { Ergonomics = "-15" }
ATT.MalfunctionMeanShotsToFailMult = 0.832

ATT.Category = {"eft_mag_mpx"}

ARC9.LoadAttachment(ATT, "eft_mpx_mag_50")


///////////////////////////////////////      eft_mpx_muzzle_a2

ATT = {}

ATT.PrintName = "MPX A2 9x19 flash hider"
ATT.CompactName = "MPX A2"
ATT.Icon = Material("entities/eft_mcx_attachments/mpxmuz.png", "mips smooth")
ATT.Description = [[The A2 Bird Cage flash hider, designed for installation on MPX 9x19 SMGs, manufactured by SIG Sauer.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_mpx_sig_mpx_a2.mdl"
ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 4
ATT.BarrelLengthAdd = 0.5

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.RecoilMult = 0.93
ATT.VisualRecoilMult = 0.93
ATT.SpreadMult = 0.97
ATT.PhysBulletMuzzleVelocityMult = 1.005

ATT.Category = {"eft_mpx_muzzle"}

ARC9.LoadAttachment(ATT, "eft_mpx_muzzle_a2")

///////////////////////////////////////      eft_muzzle_taccom

ATT = {}

ATT.PrintName = "TACCOM Carbine Brake multi-caliber muzzle brake"
ATT.CompactName = "TACCOM"
ATT.Icon = Material("entities/eft_mcx_attachments/taccom.png", "mips smooth")
ATT.Description = [[The "Carbine Brake" muzzle brake manufactured by TACCOM for SIG MPX. It can also be used with compatible .308 rifles.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_all_taccom_carabine_brake.mdl"
ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 4
ATT.BarrelLengthAdd = 1.5

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.RecoilMult = 0.88
ATT.VisualRecoilMult = 0.88
ATT.SpreadMult = 0.98
ATT.PhysBulletMuzzleVelocityMult = 1.005
ATT.HeatCapacityMult = 1.013

ATT.Category = {"eft_taccom"}

ARC9.LoadAttachment(ATT, "eft_muzzle_taccom")


///////////////////////////////////////      eft_mount_mpx_2

ATT = {}

ATT.PrintName = "MPX GEN1 handguard 2 inch rail"
ATT.CompactName = "MPX 2\""
ATT.Icon = Material("entities/eft_mcx_attachments/m2.png", "mips smooth")
ATT.Description = [[The 2 inch SIG Sauer GEN1 handguard rail adapter allows you to install additional equipment on the 1st generation SIG MPX handguard.]]

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mpx_mounts.mdl"
ATT.ModelBodygroups = "0"

ATT.Category = {"eft_mount_mpx2"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Attachments = {
    {
        PrintName = "Tactical",
        Category = "eft_tactical",
        Pos = Vector(-0.0, -0.37, 0),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_mpx_2")


///////////////////////////////////////      eft_mount_mpx_4


ATT = {}

ATT.PrintName = "MPX GEN1 handguard 4 inch rail"
ATT.CompactName = "MPX 4\""
ATT.Icon = Material("entities/eft_mcx_attachments/m4.png", "mips smooth")
ATT.Description = [[The 4 inch SIG Sauer GEN1 handguard rail adapter allows you to install additional equipment on the 1st generation SIG MPX handguard.]]

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mpx_mounts.mdl"
ATT.ModelBodygroups = "1"
-- ATT.ModelOffset = Vector(1, 0, 0)

ATT.Category = {"eft_mount_mpx4"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Attachments = {
    {
        PrintName = "Grip",
        Category = {"eft_foregrip_small"},
        Pos = Vector(1.65, -0.38, 0),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, -1),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_mpx_4")


///////////////////////////////////////      eft_mpx_pgrip_std

ATT = {}

ATT.PrintName = "MPX pistol grip"
ATT.CompactName = "MPX"
ATT.Description = [[A polymer MPX pistol grip is fit for installation on the first and second generations of MPX. Manufactured by SIG Sauer.]]
ATT.Icon = Material("entities/eft_mcx_attachments/grip.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pistolgrip_mpx.mdl"

ATT.HasGrip = true

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.SortOrder = 0
ATT.Category = {"eft_ar15_pgrip", "eft_mpx_pgrip"}
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_mpx_pgrip_std")

















local dmgrange = (GetConVar("arc9_eft_mindmgrange"):GetInt() or 1000)/1000
local mult39 = GetConVar("arc9_eft_mult_rifle"):GetFloat() or 0.5

///////////////////////////////////////      eft_ammo_300blk_ap

ATT = {}

ATT.PrintName = ".300 Blackout AP"
ATT.CompactName = "AP"
ATT.Icon = Material("entities/eft_mcx_attachments/ap.png", "mips smooth")
ATT.Description = [[A .300 Blackout (7.62x35mm) AP cartridge loaded with an 8.4 gram armor-piercing bullet from a 7.62x51mm NATO M80A1 cartridge, composed of a steel penetrator tip over a copper alloy core with a copper semi-jacket in a brass case. Despite the bullet's own characteristics when used in a full-power cartridge, these are affected when transferred to an intermediate cartridge, however, the bullet continues to have capabilities to pierce basic and intermediate body ballistic protections, in addition to being able to cause substantial adverse effects on the target after impact. Its design also allows it to be used in STANAG 5.56x45mm NATO magazines without any issues.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ".300 Blackout AP"

ATT.DamageMax = 51 * mult39
ATT.DamageMin = 35.45 * mult39
ATT.PhysBulletMuzzleVelocity = 635 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
-- ATT.SpreadMult = 1.05
ATT.RecoilMult = 1.03
ATT.VisualRecoilMult = 1.03
ATT.HeatPerShotMult = 1.5

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      48 *2.54/100/0.0254
ATT.PenetrationDelta = 65/100
ATT.ArmorPiercing =    65/100
ATT.RicochetChance =   10/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    51 * mult39     },

    {   100 /0.0254 * dmgrange, 
    47.5 * mult39     },

    {   200 /0.0254 * dmgrange, 
    43.86 * mult39     },

    {   300 /0.0254 * dmgrange, 
    41.11 * mult39     },

    {   400 /0.0254 * dmgrange, 
    39.53 * mult39     },

    {   500 /0.0254 * dmgrange, 
    38.46 * mult39     },

    {   600 /0.0254 * dmgrange, 
    37.65 * mult39     },

    {   700 /0.0254 * dmgrange, 
    37 *mult39     },

    {   800 /0.0254 * dmgrange, 
    36.4 * mult39     },

    {   900 /0.0254 * dmgrange, 
    35.91 * mult39     },

    {   1000 /0.0254 * dmgrange, 
    35.45 * mult39     },
}

ATT.Category = {"eft_ammo_300blk"}

ARC9.LoadAttachment(ATT, "eft_ammo_300blk_ap")



///////////////////////////////////////      eft_ammo_300blk_m62

ATT = {}

ATT.PrintName = ".300 Blackout M62 Tracer"
ATT.CompactName = "M62"
ATT.Icon = Material("entities/eft_mcx_attachments/m62.png", "mips smooth")
ATT.Description = [[A .300 Blackout (7.62x35mm) M62 Tracer cartridge loaded with a 9.2 gram tracer bullet from a 7.62x51mm NATO M62 cartridge, composed of a lead-antimony alloy core with a bimetallic jacket, in a brass case; intended for target designation and fire adjustment in battle (Trace color: Red). Despite the bullet's own characteristics when used in a full-power cartridge, these are affected when transferred to an intermediate cartridge, still, the bullet continues to have capabilities to pierce basic ballistic body protections as well as some intermediate models. However, it has a high bounce probability off various surfaces. Its design also allows it to be used in STANAG 5.56x45mm NATO magazines without any issues.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ".300 Blackout M62 Tracer"

ATT.DamageMax = 54 * mult39
ATT.DamageMin = 40.81 * mult39
ATT.PhysBulletMuzzleVelocity = 442  /0.0254
ATT.TracerNum = 1
ATT.TracerColor = Color(255, 16, 16)
-- ATT.SpreadMult = 1.05
ATT.RecoilMult = 1.01
ATT.VisualRecoilMult = 1.01
ATT.HeatPerShotMult = 1.35

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      36 *2.54/100/0.0254
ATT.PenetrationDelta = 40/100
ATT.ArmorPiercing =    40/100
ATT.RicochetChance =   37/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    54 * mult39     },

    {   100 /0.0254 * dmgrange, 
    50.16 * mult39     },

    {   200 /0.0254 * dmgrange, 
    48 * mult39     },

    {   300 /0.0254 * dmgrange, 
    46.44 * mult39     },

    {   400 /0.0254 * dmgrange, 
    45.25 * mult39     },

    {   500 /0.0254 * dmgrange, 
    44.3 * mult39     },

    {   600 /0.0254 * dmgrange, 
    43.44 * mult39     },

    {   700 /0.0254 * dmgrange, 
    42.7 *mult39     },

    {   800 /0.0254 * dmgrange, 
    42 * mult39     },

    {   900 /0.0254 * dmgrange, 
    41.4 * mult39     },

    {   1000 /0.0254 * dmgrange, 
    40.81 * mult39     },
}

ATT.Category = {"eft_ammo_300blk"}

ARC9.LoadAttachment(ATT, "eft_ammo_300blk_m62")


///////////////////////////////////////      eft_ammo_300blk_bcp

ATT = {}

ATT.PrintName = ".300 Blackout BCP FMJ"
ATT.CompactName = "BCP FMJ"
ATT.Icon = Material("entities/eft_mcx_attachments/bcp.png", "mips smooth")
ATT.Description = [[A .300 Blackout (7.62x35mm) BCP FMJ cartridge with a 9.4 gram lead core bullet with a bimetallic jacket in a steel case; intended for hunting, home defense, and target practice, produced by Barnaul Cartridge Plant. Thanks to its rudimentary design, this cartridge is one of the most economical options of its caliber, and despite this, it has capabilities to pierce basic ballistic body protection, as well as certain intermediate models, in addition to providing a significant stopping power effect. However, it has a significant bounce probability on various surfaces. Its design also allows it to be used in STANAG 5.56x45mm NATO magazines without any problem.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ".300 Blackout BCP FMJ"

ATT.DamageMax = 60 * mult39
ATT.DamageMin = 42.11 * mult39
ATT.PhysBulletMuzzleVelocity = 605  /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
-- ATT.SpreadMult = 1.05
-- ATT.RecoilMult = 1.01
-- ATT.VisualRecoilMult = 1.01
ATT.HeatPerShotMult = 1.3

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      30 *2.54/100/0.0254
ATT.PenetrationDelta = 36/100
ATT.ArmorPiercing =    36/100
ATT.RicochetChance =   30/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    60 * mult39     },

    {   100 /0.0254 * dmgrange, 
    55.53 * mult39     },

    {   200 /0.0254 * dmgrange, 
    51.16 * mult39     },

    {   300 /0.0254 * dmgrange, 
    48.4 * mult39     },

    {   400 /0.0254 * dmgrange, 
    46.8 * mult39     },

    {   500 /0.0254 * dmgrange, 
    45.6 * mult39     },

    {   600 /0.0254 * dmgrange, 
    44.7 * mult39     },

    {   700 /0.0254 * dmgrange, 
    43.92 *mult39     },

    {   800 /0.0254 * dmgrange, 
    43.24 * mult39     },

    {   900 /0.0254 * dmgrange, 
    42.65 * mult39     },

    {   1000 /0.0254 * dmgrange, 
    42.11 * mult39     },
}

ATT.Category = {"eft_ammo_300blk"}

ARC9.LoadAttachment(ATT, "eft_ammo_300blk_bcp")

///////////////////////////////////////      eft_ammo_300blk_cbj

ATT = {}

ATT.PrintName = ".300 Blackout CBJ"
ATT.CompactName = "CBJ"
ATT.Icon = Material("entities/eft_mcx_attachments/bcp.png", "mips smooth")
ATT.Description = [[Experimental armor piercing round by CBJ Tech. Contains a 6.1g tungsten core projectile inside 1g plastic sabot. It has improved armor penetrating capabilities and improved velocity.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ".300 Blackout CBJ"

ATT.DamageMax = 58 * mult39
ATT.DamageMin = 39.4 * mult39
ATT.PhysBulletMuzzleVelocity = 725  /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
-- ATT.SpreadMult = 1.05
ATT.RecoilMult = 1.05
ATT.VisualRecoilMult = 1.05
ATT.HeatPerShotMult = 1.5

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      43 *2.54/100/0.0254
ATT.PenetrationDelta = 57/100
ATT.ArmorPiercing =    57/100
ATT.RicochetChance =   30/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    58 * mult39     },

    {   100 /0.0254 * dmgrange, 
    54.56 * mult39     },

    {   200 /0.0254 * dmgrange, 
    51 * mult39     },

    {   300 /0.0254 * dmgrange, 
    47.42 * mult39     },

    {   400 /0.0254 * dmgrange, 
    44.7 * mult39     },

    {   500 /0.0254 * dmgrange, 
    73 * mult39     },

    {   600 /0.0254 * dmgrange, 
    42 * mult39     },

    {   700 /0.0254 * dmgrange, 
    41.1 *mult39     },

    {   800 /0.0254 * dmgrange, 
    40.5 * mult39     },

    {   900 /0.0254 * dmgrange, 
    39.91 * mult39     },

    {   1000 /0.0254 * dmgrange, 
    39.4 * mult39     },
}

ATT.Category = {"eft_ammo_300blk"}

ARC9.LoadAttachment(ATT, "eft_ammo_300blk_cbj")


///////////////////////////////////////      eft_ammo_300blk_vmax

ATT = {}

ATT.PrintName = ".300 Blackout V-Max"
ATT.CompactName = "V-Max"
ATT.Icon = Material("entities/eft_mcx_attachments/vmax.png", "mips smooth")
ATT.Description = [[A .300 Blackout (7.62x35mm) V-Max cartridge with a 7.1 gram lead core polymer tipped expansive bullet with a copper metal jacket, in a brass case. This bullet features a ballistic tip that improves its accuracy and acts as a wedge on the lead core upon impact, allowing the bullet to expand and cause considerable damage on the target. Despite the peculiarity of its design, it is able to pierce basic ballistic body protections. Its design also allows it to be used in STANAG 5.56x45mm NATO magazines without any problem.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ".300 Blackout V-Max"

ATT.DamageMax = 72 * mult39
ATT.DamageMin = 48.93 * mult39
ATT.PhysBulletMuzzleVelocity = 723  /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
ATT.SpreadMult = 0.7
ATT.RecoilMult = 0.9
ATT.VisualRecoilMult = 0.9
ATT.HeatPerShotMult = 1.4

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      20 *2.54/100/0.0254
ATT.PenetrationDelta = 25/100
ATT.ArmorPiercing =    25/100
ATT.RicochetChance =   10/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    72 * mult39     },

    {   100 /0.0254 * dmgrange, 
    67.74 * mult39     },

    {   200 /0.0254 * dmgrange, 
    63.4 * mult39     },

    {   300 /0.0254 * dmgrange, 
    58.84 * mult39     },

    {   400 /0.0254 * dmgrange, 
    55.5 * mult39     },

    {   500 /0.0254 * dmgrange, 
    53.42 * mult39     },

    {   600 /0.0254 * dmgrange, 
    52.12 * mult39     },

    {   700 /0.0254 * dmgrange, 
    51.1 *mult39     },

    {   800 /0.0254 * dmgrange, 
    50.27 * mult39     },

    {   900 /0.0254 * dmgrange, 
    49.56 * mult39     },

    {   1000 /0.0254 * dmgrange, 
    48.93 * mult39     },
}

ATT.Category = {"eft_ammo_300blk"}

ARC9.LoadAttachment(ATT, "eft_ammo_300blk_vmax")

///////////////////////////////////////      eft_ammo_300blk_whisper

ATT = {}

ATT.PrintName = ".300 Blackout Whisper"
ATT.CompactName = "Whisper"
ATT.Icon = Material("entities/eft_mcx_attachments/wh.png", "mips smooth")
ATT.Description = [[The Whisper cartridge is a lightweight, hyper velocity design using an aluminum core and pre-stressed jacket. The aluminum core initiates the expansion slightly after contact, pressing back into the pre-stressed jacket and activating a violent, incapacitating energy transfer. The cartridge is ideal for close fire contacts of unarmored and/or lightly armored targets. Not to be mistaken for .300 Blackout, since Whisper was developed almost 20 years before it.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = ".300 Blackout Whisper"

ATT.DamageMax = 90 * mult39
ATT.DamageMin = 59.72 * mult39
ATT.PhysBulletMuzzleVelocity = 853  /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
ATT.SpreadMult = 0.95
ATT.RecoilMult = 0.95
ATT.VisualRecoilMult = 0.95
ATT.HeatPerShotMult = 1.5

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      14 *2.54/100/0.0254
ATT.PenetrationDelta = 18/100
ATT.ArmorPiercing =    18/100
ATT.RicochetChance =   10/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    90 * mult39     },

    {   100 /0.0254 * dmgrange, 
    85.1 * mult39     },

    {   200 /0.0254 * dmgrange, 
    80.6 * mult39     },

    {   300 /0.0254 * dmgrange, 
    76.4 * mult39     },

    {   400 /0.0254 * dmgrange, 
    71.44 * mult39     },

    {   500 /0.0254 * dmgrange, 
    67.2 * mult39     },

    {   600 /0.0254 * dmgrange, 
    64.4 * mult39     },

    {   700 /0.0254 * dmgrange, 
    62.7 *mult39     },

    {   800 /0.0254 * dmgrange, 
    61.5 * mult39     },

    {   900 /0.0254 * dmgrange, 
    60.53 * mult39     },

    {   1000 /0.0254 * dmgrange, 
    59.72 * mult39     },
}

ATT.Category = {"eft_ammo_300blk"}

ARC9.LoadAttachment(ATT, "eft_ammo_300blk_whisper")

