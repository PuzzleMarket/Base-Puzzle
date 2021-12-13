Citizen.CreateThread(function()
	LoadInterior(GetInteriorAtCoords(440.84,-983.14,30.69))
	for _,ipl in pairs(allIpls) do
		loadInt(ipl.coords,ipl.interiorsProps)
	end
end)

function loadInt(coordsTable,table)
	for _,coords in pairs(coordsTable) do
		local interiorID = GetInteriorAtCoords(coords[1],coords[2],coords[3])
		LoadInterior(interiorID)
		for _,propName in pairs(table) do
			Citizen.Wait(10)
			EnableInteriorProp(interiorID,propName)
		end
		RefreshInterior(interiorID)
	end
end

allIpls = {
	{
		interiorsProps = {
			"swap_clean_apt",
			"layer_debra_pic",
			"layer_whiskey",
			"swap_sofa_A"
		},
		coords = {{ -1150.7,-1520.7,10.6 }}  -- Casinha do Franklin
	},
	{
		interiorsProps = {
			"csr_beforeMission",
			"csr_inMission"
		},
		coords = {{ -47.1,-1115.3,26.5 }}  -- Concessionária
	},
	{
		interiorsProps = {
			--"des_farmhouse",
			--"des_farmhs_endimap",
			--"des_farmhs_end_occl",
			--"des_farmhs_startimap",
			--"des_farmhs_start_occl",
			--"-farm_burnt",
			--"-farm_burnt_props",
			--"-farmint_cap",
			--"farmint",
			"farm",
			--"farm_lod",
			"farm_props",
			"farm_int"
		},
		coords = {{ 2469.03, 4955.278, 45.11892 }}  -- Rancho
	},
	{
		interiorsProps = {
			"V_Michael_bed_tidy",
			"V_Michael_M_items",
			"V_Michael_D_items",
			"V_Michael_S_items",
			"V_Michael_L_Items"
		},
		coords = {{ -802.3,175.0,72.8 }}  -- Mansão do Michael
	},
	{
		interiorsProps = {
			--"security_low",
			"security_high",
			"equipment_basic",
			"equipment_upgrade",
			"set_up",
			--"production_basic",
			"production_upgrade",
			--"table_equipment",
			"table_equipment_upgrade",
			--"coke_press_basic",
			"coke_press_upgrade",
			"coke_cut_01",
			"coke_cut_02",
			"coke_cut_03",
			"coke_cut_04",
			"coke_cut_05"
		},
		coords = {{ 1093.6,-3196.6,-38.9 }} -- Cocaina
	},
	{
		interiorsProps = {
			"weed_drying",
			"weed_production",
			--"weed_set_up",
			--"weed_standard_equip",
			"weed_upgrade_equip",
			--"weed_growtha_stage1",
			--"weed_growtha_stage2",
			"weed_growtha_stage3",
			--"weed_growthb_stage1",
			--"weed_growthb_stage2",
			--"weed_growthb_stage3",
			"weed_growthc_stage1",
			--"weed_growthc_stage2",
			--"weed_growthc_stage3",
			"weed_growthd_stage1",
			--"weed_growthd_stage2",
			--"weed_growthd_stage3",
			--"weed_growthe_stage1",
			"weed_growthe_stage2",
			--"weed_growthe_stage3",
			--"weed_growthf_stage1",
			"weed_growthf_stage2",
			--"weed_growthf_stage3",
			"weed_growthg_stage1",
			--"weed_growthg_stage2",
			--"weed_growthg_stage3",
			--"weed_growthh_stage1",
			--"weed_growthh_stage2",
			"weed_growthh_stage3",
			--"weed_growthi_stage1",
			"weed_growthi_stage2",
			--"weed_growthi_stage3",
			"weed_hosea",
			"weed_hoseb",
			"weed_hosec",
			"weed_hosed",
			"weed_hosee",
			"weed_hosef",
			"weed_hoseg",
			"weed_hoseh",
			"weed_hosei",
			--"light_growtha_stage23_standard",
			--"light_growthb_stage23_standard",
			--"light_growthc_stage23_standard",
			--"light_growthd_stage23_standard",
			--"light_growthe_stage23_standard",
			--"light_growthf_stage23_standard",
			--"light_growthg_stage23_standard",
			--"light_growthh_stage23_standard",
			--"light_growthi_stage23_standard",
			"light_growtha_stage23_upgrade",
			"light_growthb_stage23_upgrade",
			"light_growthc_stage23_upgrade",
			"light_growthc_stage23_upgrade",
			"light_growthd_stage23_upgrade",
			"light_growthe_stage23_upgrade",
			"light_growthf_stage23_upgrade",
			"light_growthg_stage23_upgrade",
			"light_growthh_stage23_upgrade",
			"light_growthi_stage23_upgrade",
			--"weed_low_security",
			"weed_security_upgrade",
			"weed_chairs"
		},
		coords={{1051.491, -3196.536, -39.14842}}  -- Laboratório de Maconha
	},
	{
		interiorsProps = {
			"coke_stash1",
			"coke_stash2",
			"coke_stash3",
			"decorative_02",
			"furnishings_02",
			"walls_01",
			"mural_02",
			"gun_locker",
			"mod_booth"
		},
		coords = {{ 1107.0,-3157.3,-37.5 }} -- Motoclub
	},
	{
		interiorsProps = {
			"coke_large",
			"decorative_01",
			"furnishings_01",
			"walls_01",
			"lower_walls_default",
			"gun_locker",
			"mod_booth"
		},
		coords = {{ 998.4,-3164.7,-38.9 }} -- Motoclub2
	},
	{
		interiorsProps = {
			"chair01",
			"chair02",
			"chair03",
			"chair04",
			"chair05",
			"chair06",
			"chair07",
			"clutter",
			--"equipment_basic",
			"equipment_upgrade",
			--"interior_basic",
			"interior_upgrade",
			"production",
			"security_high",
			--"security_low",
			"set_up"
		},
		coords = {{ 1163.8,-3195.7,-39.0 }} -- Escritório
	},
	{
		interiorsProps = {
			--"Bunker_Style_A",
			--"Bunker_Style_B",
			"Bunker_Style_C",
			--"standard_bunker_set",
			"upgrade_bunker_set",
			--"standard_security_set",
			"security_upgrade",
			--"Office_blocker_set",
			"Office_Upgrade_set",
			"gun_range_blocker_set",
			"gun_wall_blocker",
			"gun_range_lights",
			"gun_locker_upgrade",
			"Gun_schematic_set"
		},
		coords = {{ 899.55,-3246.03,-98.04 }} -- Bunker
	},
	{
		interiorsProps = {
			"canyonriver01_traincrash",
			"railing_end"
		},
		coords = {{ 532.1309, 4526.187, 89.79387 }} -- Trem na PONTE
	},
	{
		interiorsProps = {
			"canyonriver01",
			"railing_start"
		},
		coords = {{ 532.1309, 4526.187, 89.79387 }} -- Trem na PONTE
	},
	{
		interiorsProps = {
			"Int01_ba_clubname_01",
	        "Int01_ba_Style03",
	        "Int01_ba_style03_podium",
	        "Int01_ba_equipment_setup",
	        "Int01_ba_equipment_upgrade",
	        "Int01_ba_security_upgrade",
	        "Int01_ba_dj04",
	        "DJ_01_Lights_01",
	        "DJ_02_Lights_01",
	        "DJ_03_Lights_01",
	        "DJ_04_Lights_01",
	        "Int01_ba_bar_content",
	        "Int01_ba_booze_03",
	        "Int01_ba_trophy01",
	        "Int01_ba_Clutter",
	        "Int01_ba_deliverytruck",
	        "Int01_ba_dry_ice",
	        "light_rigs_off",
	        "Int01_ba_lightgrid_01",
	        "Int01_ba_trad_lights",
	        "Int01_ba_trophy04",
	        "Int01_ba_trophy05",
	        "Int01_ba_trophy07",
	        "Int01_ba_trophy08",
	        "Int01_ba_trophy09",
	        "Int01_ba_trophy10",
	        "Int01_ba_trophy11",
	        "Int01_ba_booze_01",
			"Int01_ba_booze_02",
			"int01_ba_lights_screen"
        },
		coords = {{ -1604.664, -3012.583, -78.00 }} -- Galaxy
	},
}