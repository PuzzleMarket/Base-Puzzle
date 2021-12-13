--[[local pdl = GetInteriorAtCoords(440.84, -983.14, 30.69)  -- Fix limbo DP
LoadInterior(pdl)]]


local bennys = GetInteriorAtCoords(-210.29,-1321.87,30.89)  --Benny's
LoadInterior(bennys)

--[[Citizen.CreateThread(function() -- Pillbox hospital (Antigo)
		RequestIpl("rc12b_hospitalinterior")
		RequestIpl("rc12b_destroyed")
		RequestIpl("v_carshowroom")
end)]]

Citizen.CreateThread(function()
RequestIpl("gabz_pillbox_milo_")
	interiorID = GetInteriorAtCoords(311.2546, -592.4204, 42.32737) -- Hospital Azul
	if IsValidInterior(interiorID) then
		RemoveIpl("rc12b_fixed")
		RemoveIpl("rc12b_destroyed")
		RemoveIpl("rc12b_default")
		RemoveIpl("rc12b_hospitalinterior_lod")
		RemoveIpl("rc12b_hospitalinterior")
	RefreshInterior(interiorID)
	end
end)


Citizen.CreateThread(function()  -- Fix casa do Franklin

interiorID = GetInteriorAtCoords(3.199463, 529.7808, 169.6262)
	if IsValidInterior(interiorID) then
	
		EnableInteriorProp(interiorID, "locked")
		RefreshInterior(interiorID)
	end
end)

Citizen.CreateThread(function()
RequestIpl("lafa2k_bkr_biker_dlc_int_02")
interiorID = GetInteriorAtCoords(889.67889404297,-2102.9304199219,30.761777877808)  --Mc do LAFA
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "walls_01")
		EnableInteriorProp(interiorID, "lower_walls_default")
		EnableInteriorProp(interiorID, "furnishings_02")
		EnableInteriorProp(interiorID, "mural_03")
		EnableInteriorProp(interiorID, "decorative_02")
		EnableInteriorProp(interiorID, "gun_locker")
		EnableInteriorProp(interiorID, "mod_booth")
		EnableInteriorProp(interiorID, "meth_small")
		EnableInteriorProp(interiorID, "meth_medium")
		EnableInteriorProp(interiorID, "meth_large")
		EnableInteriorProp(interiorID, "cash_small")
		EnableInteriorProp(interiorID, "cash_medium")
		EnableInteriorProp(interiorID, "cash_large")
		EnableInteriorProp(interiorID, "weed_small")
		EnableInteriorProp(interiorID, "weed_medium")
		EnableInteriorProp(interiorID, "weed_large")
		EnableInteriorProp(interiorID, "coke_small")
		EnableInteriorProp(interiorID, "coke_medium")
		EnableInteriorProp(interiorID, "coke_large")
		EnableInteriorProp(interiorID, "counterfeit_small")
		EnableInteriorProp(interiorID, "counterfeit_medium")
		EnableInteriorProp(interiorID, "counterfeit_large")
		EnableInteriorProp(interiorID, "id_small")
		EnableInteriorProp(interiorID, "id_medium")
		EnableInteriorProp(interiorID, "id_large")
		SetInteriorPropColor(interiorID, "walls_01", 8)
		SetInteriorPropColor(interiorID, "lower_walls_default", 8)
		RefreshInterior(interiorID)
	end
	
RequestIpl("lafa2k_bkr_biker_dlc_int_02")
interiorID = GetInteriorAtCoords(889.67889404297,-2102.9304199219,30.761777877808)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "walls_01")
		EnableInteriorProp(interiorID, "lower_walls_default")
		EnableInteriorProp(interiorID, "furnishings_02")
		EnableInteriorProp(interiorID, "mural_03")
		EnableInteriorProp(interiorID, "decorative_02")
		EnableInteriorProp(interiorID, "gun_locker")
		EnableInteriorProp(interiorID, "mod_booth")
		EnableInteriorProp(interiorID, "meth_small")
		EnableInteriorProp(interiorID, "meth_medium")
		EnableInteriorProp(interiorID, "meth_large")
		EnableInteriorProp(interiorID, "cash_small")
		EnableInteriorProp(interiorID, "cash_medium")
		EnableInteriorProp(interiorID, "cash_large")
		EnableInteriorProp(interiorID, "weed_small")
		EnableInteriorProp(interiorID, "weed_medium")
		EnableInteriorProp(interiorID, "weed_large")
		EnableInteriorProp(interiorID, "coke_small")
		EnableInteriorProp(interiorID, "coke_medium")
		EnableInteriorProp(interiorID, "coke_large")
		EnableInteriorProp(interiorID, "counterfeit_small")
		EnableInteriorProp(interiorID, "counterfeit_medium")
		EnableInteriorProp(interiorID, "counterfeit_large")
		EnableInteriorProp(interiorID, "id_small")
		EnableInteriorProp(interiorID, "id_medium")
		EnableInteriorProp(interiorID, "id_large")
		SetInteriorPropColor(interiorID, "walls_01", 8)
		SetInteriorPropColor(interiorID, "lower_walls_default", 8)
		RefreshInterior(interiorID)
	end

interiorID = GetInteriorAtCoords(96.47223, 6347.784,30.48238)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "weed_hosea")
		EnableInteriorProp(interiorID, "weed_hoseb")
		EnableInteriorProp(interiorID, "weed_hosec")
		EnableInteriorProp(interiorID, "weed_hosed")
		EnableInteriorProp(interiorID, "weed_hosee")
		EnableInteriorProp(interiorID, "weed_hosef")
		EnableInteriorProp(interiorID, "weed_hoseg")
		EnableInteriorProp(interiorID, "weed_hoseh")
		EnableInteriorProp(interiorID, "weed_hosei")
		EnableInteriorProp(interiorID, "weed_growtha_stage3")
		EnableInteriorProp(interiorID, "weed_growthb_stage3")
		EnableInteriorProp(interiorID, "weed_growthc_stage3")
		EnableInteriorProp(interiorID, "weed_growthd_stage3")
		EnableInteriorProp(interiorID, "weed_growthe_stage3")
		EnableInteriorProp(interiorID, "weed_growthf_stage3")
		EnableInteriorProp(interiorID, "weed_growthg_stage3")
		EnableInteriorProp(interiorID, "weed_growthh_stage3")
		EnableInteriorProp(interiorID, "weed_growthi_stage3")
		EnableInteriorProp(interiorID, "light_growtha_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthb_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthc_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthd_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthe_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthf_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthg_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthh_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthi_stage33_upgrade")
		EnableInteriorProp(interiorID, "weed_upgrade_equip")
		EnableInteriorProp(interiorID, "weed_drying")
		EnableInteriorProp(interiorID, "weed_security_upgrade")
		EnableInteriorProp(interiorID, "weed_production")
		EnableInteriorProp(interiorID, "weed_set_up")
		EnableInteriorProp(interiorID, "weed_chairs")
		RefreshInterior(interiorID)	
	end

interiorID = GetInteriorAtCoords(24.54136000, -1400.42700000,29.12644000)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "weed_upgrade_equip")
		EnableInteriorProp(interiorID, "counterfeit_security")
		EnableInteriorProp(interiorID, "counterfeit_cashpile100a")
		EnableInteriorProp(interiorID, "counterfeit_cashpile20a")
		EnableInteriorProp(interiorID, "counterfeit_cashpile10a")
		EnableInteriorProp(interiorID, "counterfeit_cashpile100b")
		EnableInteriorProp(interiorID, "counterfeit_cashpile100c")
		EnableInteriorProp(interiorID, "counterfeit_cashpile100d")
		EnableInteriorProp(interiorID, "counterfeit_cashpile20b")
		EnableInteriorProp(interiorID, "counterfeit_cashpile20c")
		EnableInteriorProp(interiorID, "counterfeit_cashpile20d")
		EnableInteriorProp(interiorID, "counterfeit_cashpile10b")
		EnableInteriorProp(interiorID, "counterfeit_cashpile10c")
		EnableInteriorProp(interiorID, "counterfeit_cashpile10d")
		EnableInteriorProp(interiorID, "counterfeit_setup")
		EnableInteriorProp(interiorID, "counterfeit_upgrade_equip")
		EnableInteriorProp(interiorID, "dryera_on")
		EnableInteriorProp(interiorID, "dryerb_on")
		EnableInteriorProp(interiorID, "dryerc_on")
		EnableInteriorProp(interiorID, "dryerd_on")
		EnableInteriorProp(interiorID, "money_cutter")
		EnableInteriorProp(interiorID, "special_chairs")
		RefreshInterior(interiorID)
	end

interiorID = GetInteriorAtCoords(1497.75100000, 6393.09000000,21.78359000)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "meth_lab_upgrade")
		EnableInteriorProp(interiorID, "meth_lab_production")
		EnableInteriorProp(interiorID, "meth_lab_security_high")
		EnableInteriorProp(interiorID, "meth_lab_setup")
		EnableInteriorProp(interiorID, "counterfeit_standard_equip")
		RefreshInterior(interiorID)
	end

interiorID = GetInteriorAtCoords(-1103.1722412109,4951.3447265625,234.8638)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "coke_cut_01")
		EnableInteriorProp(interiorID, "coke_cut_02")
		EnableInteriorProp(interiorID, "coke_cut_03")
		EnableInteriorProp(interiorID, "coke_cut_04")
		EnableInteriorProp(interiorID, "coke_cut_05")
		EnableInteriorProp(interiorID, "set_up")
		EnableInteriorProp(interiorID, "security_high")
		EnableInteriorProp(interiorID, "production_upgrade")
		EnableInteriorProp(interiorID, "equipment_upgrade")
		RefreshInterior(interiorID)
	end

interiorID = GetInteriorAtCoords(2845.278,4441.969,47.50344)
	if IsValidInterior(interiorID) then
		RefreshInterior(interiorID)
	end	

RequestIpl("imp_impexp_interior_placement_interior_1_impexp")
interiorID = GetInteriorAtCoords(941.10520000,-971.67590000,39.39997000)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "branded_style_set")
		EnableInteriorProp(interiorID, "car_floor_hatch")
		EnableInteriorProp(interiorID, "door_blocker")
		RefreshInterior(interiorID)
	end		

interiorID = GetInteriorAtCoords(899.5518,-3246.038, -98.04907)  -- bunker
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "bunker_style_c")
		EnableInteriorProp(interiorID, "upgrade_bunker_set")
		EnableInteriorProp(interiorID, "security_upgrade")
		EnableInteriorProp(interiorID, "office_upgrade_set")
		EnableInteriorProp(interiorID, "gun_range_blocker_set")
		EnableInteriorProp(interiorID, "gun_wall_blocker")
		EnableInteriorProp(interiorID, "gun_range_lights")
		EnableInteriorProp(interiorID, "gun_locker_upgrade")
		EnableInteriorProp(interiorID, "Gun_schematic_set")
		RefreshInterior(interiorID)
	end

interiorID = GetInteriorAtCoords(-1150.7,-1520.7,10.6)  -- Casinha do Trevor na Praia
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "swap_clean_apt")
		EnableInteriorProp(interiorID, "layer_debra_pic")
		EnableInteriorProp(interiorID, "layer_whiskey")
		EnableInteriorProp(interiorID, "swap_sofa_A")
		RefreshInterior(interiorID)
	end

interiorID = GetInteriorAtCoords(-47.1,-1115.3,26.5)  -- Concessionária
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "csr_beforeMission")
		EnableInteriorProp(interiorID, "csr_inMission")
		RefreshInterior(interiorID)
	end

interiorID = GetInteriorAtCoords(-802.3,175.0,72.8)  -- Mansão do Michael
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "V_Michael_bed_tidy")
		EnableInteriorProp(interiorID, "V_Michael_M_items")
		EnableInteriorProp(interiorID, "V_Michael_D_items")
		EnableInteriorProp(interiorID, "V_Michael_S_items")
		EnableInteriorProp(interiorID, "V_Michael_L_Items")
		RefreshInterior(interiorID)
	end

interiorID = GetInteriorAtCoords(1107.0,-3157.3,-37.5)  -- Motoclube
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "coke_stash1")
		EnableInteriorProp(interiorID, "coke_stash2")
		EnableInteriorProp(interiorID, "coke_stash3")
		EnableInteriorProp(interiorID, "decorative_02")
		EnableInteriorProp(interiorID, "furnishings_02")
		EnableInteriorProp(interiorID, "walls_01")
		EnableInteriorProp(interiorID, "mural_02")
		EnableInteriorProp(interiorID, "gun_locker")
		EnableInteriorProp(interiorID, "mod_booth")
		RefreshInterior(interiorID)
	end

interiorID = GetInteriorAtCoords(998.4,-3164.7,-38.9)  -- Motoclube2
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "coke_large")
		EnableInteriorProp(interiorID, "decorative_01")
		EnableInteriorProp(interiorID, "furnishings_01")
		EnableInteriorProp(interiorID, "walls_01")
		EnableInteriorProp(interiorID, "lower_walls_default")
		EnableInteriorProp(interiorID, "gun_locker")
		EnableInteriorProp(interiorID, "mod_booth")
		RefreshInterior(interiorID)
	end
	
interiorID = GetInteriorAtCoords(1163.8,-3195.7,-39.0)  -- Escritório Andrade
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "chair01")
		EnableInteriorProp(interiorID, "chair02")
		EnableInteriorProp(interiorID, "chair03")
		EnableInteriorProp(interiorID, "chair04")
		EnableInteriorProp(interiorID, "chair05")
		EnableInteriorProp(interiorID, "chair06")
		EnableInteriorProp(interiorID, "chair07")
		EnableInteriorProp(interiorID, "clutter")
		EnableInteriorProp(interiorID, "equipment_upgrade")
		EnableInteriorProp(interiorID, "interior_upgrade")
		EnableInteriorProp(interiorID, "production")
		EnableInteriorProp(interiorID, "security_high")
		EnableInteriorProp(interiorID, "set_up")
		RefreshInterior(interiorID)
	end

RequestIpl("imp_impexp_interior_placement_interior_1_impexp")
interiorID = GetInteriorAtCoords(941.10520000,-971.67590000,39.39997000)  -- Import e Export
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "garage_decor_01")
		EnableInteriorProp(interiorID, "garage_decor_02")
		EnableInteriorProp(interiorID, "garage_decor_03")
		EnableInteriorProp(interiorID, "garage_decor_04")
		EnableInteriorProp(interiorID, "lighting_option01")
		EnableInteriorProp(interiorID, "lighting_option02")
		EnableInteriorProp(interiorID, "lighting_option03")
		EnableInteriorProp(interiorID, "lighting_option04")
		EnableInteriorProp(interiorID, "lighting_option05")
		EnableInteriorProp(interiorID, "lighting_option06")
		EnableInteriorProp(interiorID, "lighting_option07")
		EnableInteriorProp(interiorID, "lighting_option08")
		EnableInteriorProp(interiorID, "lighting_option09")
		EnableInteriorProp(interiorID, "numbering_style01_n3")
		EnableInteriorProp(interiorID, "numbering_style02_n3")
		EnableInteriorProp(interiorID, "numbering_style03_n3")
		EnableInteriorProp(interiorID, "numbering_style04_n3")
		EnableInteriorProp(interiorID, "numbering_style05_n3")
		EnableInteriorProp(interiorID, "numbering_style06_n3")
		EnableInteriorProp(interiorID, "numbering_style07_n3")
		EnableInteriorProp(interiorID, "numbering_style08_n3")
		EnableInteriorProp(interiorID, "numbering_style09_n3")
		EnableInteriorProp(interiorID, "floor_vinyl_01")
		EnableInteriorProp(interiorID, "floor_vinyl_02")
		EnableInteriorProp(interiorID, "floor_vinyl_03")
		EnableInteriorProp(interiorID, "floor_vinyl_04")
		EnableInteriorProp(interiorID, "floor_vinyl_05")
		EnableInteriorProp(interiorID, "floor_vinyl_06")
		EnableInteriorProp(interiorID, "floor_vinyl_07")
		EnableInteriorProp(interiorID, "floor_vinyl_08")
		EnableInteriorProp(interiorID, "floor_vinyl_09")
		EnableInteriorProp(interiorID, "floor_vinyl_10")
		EnableInteriorProp(interiorID, "floor_vinyl_11")
		EnableInteriorProp(interiorID, "floor_vinyl_12")
		EnableInteriorProp(interiorID, "floor_vinyl_13")
		EnableInteriorProp(interiorID, "floor_vinyl_14")
		EnableInteriorProp(interiorID, "floor_vinyl_15")
		EnableInteriorProp(interiorID, "floor_vinyl_16")
		EnableInteriorProp(interiorID, "floor_vinyl_17")
		EnableInteriorProp(interiorID, "floor_vinyl_18")
		EnableInteriorProp(interiorID, "floor_vinyl_19")
		EnableInteriorProp(interiorID, "floor_vinyl_19")
		EnableInteriorProp(interiorID, "branded_style_set")
		--EnableInteriorProp(interiorID, "urban_style_set")
		EnableInteriorProp(interiorID, "door_blocker")
		RefreshInterior(interiorID)
	end		
end)