local ATT = {}

///////////////////////////////////////      eft_ar10_mag_l7_20


ATT = {}

ATT.PrintName = "AR-10 7.62x51 Lancer L7AWM 20-round magazine"
ATT.CompactName = "L7AWM 20"
ATT.Icon = Material("entities/eft_spear_attachments/20.png", "mips smooth")
ATT.Description = [[A 20-round double-stack L7AWM 20 magazine for 7.62x51 NATO ammunition. Manufactured by Lancer Systems.]]

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
ATT.MalfunctionMeanShotsToFailMult = 0.98

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_ar10_mag"}

ATT.ClipSize = 20
ATT.ChamberSize = 1
ATT.SuppressEmptySuffix = false 
ATT.DropMagazineAmount = 1
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_ar10_lancer_l7_awm_762x51_20.mdl"
ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_ar10_lancer_l7_awm_762x51_20.mdl"


ARC9.LoadAttachment(ATT, "eft_ar10_mag_l7_20")

///////////////////////////////////////      eft_ar10_mag_l7_25


ATT = {}

ATT.PrintName = "AR-10 7.62x51 Lancer L7AWM 25-round magazine"
ATT.CompactName = "L7AWM 25"
ATT.Icon = Material("entities/eft_spear_attachments/25.png", "mips smooth")
ATT.Description = [[A 25-round double-stack L7AWM 25 magazine for 7.62x51 NATO ammunition. Manufactured by Lancer Systems.]]

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.MalfunctionMeanShotsToFailMult = 0.98

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_ar10_mag"}

ATT.ClipSize = 25
ATT.ChamberSize = 1
ATT.SuppressEmptySuffix = false 
ATT.DropMagazineAmount = 1
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_ar10_lancer_l7_awm_762x51_25.mdl"
ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_ar10_lancer_l7_awm_762x51_25.mdl"


ARC9.LoadAttachment(ATT, "eft_ar10_mag_l7_25")