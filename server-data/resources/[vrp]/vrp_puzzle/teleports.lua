local Teleport = {
	["COMEDY"] = {
		positionFrom = { ['x'] = -430.04, ['y'] = 261.80, ['z'] = 83.00 },
		positionTo = { ['x'] = -458.92, ['y'] = 284.85, ['z'] = 78.52 }
	},
	["TELEFERICO"] = {
		positionFrom = { ['x'] = -741.06, ['y'] = 5593.12, ['z'] = 41.65 },
		positionTo = { ['x'] = 446.15, ['y'] = 5571.72, ['z'] = 781.18 }
	},
	["HOSPITALHELIPONTO"] = {
		positionFrom = { ['x'] = 330.35, ['y'] = -601.15, ['z'] = 43.28 },
		positionTo = { ['x'] = 338.53, ['y'] = -583.79, ['z'] = 74.16 }  
	},
	["HOSPITALLABORATORIO"] = {
		positionFrom = { ['x'] = 243.35, ['y'] = -1366.86, ['z'] = 24.53 },
		positionTo = { ['x'] = 251.66, ['y'] = -1366.49, ['z'] = 39.53 }
	},
	["HOSPITALHUMANLABS"] = {
		positionFrom = { ['x'] = 3552.9, ['y'] = 3667.51, ['z'] = 28.13 },
		positionTo = { ['x'] = 247.02, ['y'] = -1371.68, ['z'] = 24.54 }
	},
	["HUMANLABSELEVATOR"] = {
		positionFrom = { ['x'] = 3540.71, ['y'] = 3675.08, ['z'] = 28.12 },
		positionTo = { ['x'] = 3540.56, ['y'] = 3676.0, ['z'] = 20.99 }
	},
	["MOTOCLUB"] = {
		positionFrom = { ['x'] = -80.89, ['y'] = 214.78, ['z'] = 96.55 },
		positionTo = { ['x'] = 1120.96, ['y'] = -3152.57, ['z'] = -37.06 }
	},
	["LUXURY06"] = {
		positionFrom = { ['x'] = -1018.74, ['y'] = 167.24, ['z'] = 58.74 },
		positionTo = { ['x'] = -1020.62, ['y'] = 166.59, ['z'] = 58.54 }
	},
	["ESCRITORIO"] = {
		positionFrom = { ['x'] = -70.93, ['y'] = -801.04, ['z'] = 44.22 },
		positionTo = { ['x'] = -75.64, ['y'] = -827.15, ['z'] = 243.39 }
	},
	["ESCRITORIO2"] = {
		positionFrom = { ['x'] = -1194.46, ['y'] = -1189.31, ['z'] = 7.69 },
		positionTo = { ['x'] = -1007.12, ['y'] = -486.67, ['z'] = 39.97 }
	},
	["ESCRITORIO3"] = {
		positionFrom = { ['x'] = -1007.12, ['y'] = -486.67, ['z'] = 39.97 },
		positionTo = { ['x'] = -1003.05, ['y'] = -477.92, ['z'] = 50.02 }
	},
	["ESCRITORIO4"] = {
		positionFrom = { ['x'] = -1913.48, ['y'] = -574.11, ['z'] = 11.43 },
		positionTo = { ['x'] = -1902.05, ['y'] = -572.42, ['z'] = 19.09 }
	},
	["LUXURY43/1"] = {
		positionFrom = { ['x'] = -1775.462, ['y'] = 352.3035, ['z'] = 89.3709 },
		positionTo = { ['x'] = -1773.7652, ['y'] = 351.3415, ['z'] = 89.3712 }
	},
	["LUXURY43/2"] = {
		positionFrom = { ['x'] = -1810.075, ['y'] = 320.6946, ['z'] = 89.3713 },
		positionTo = { ['x'] = -1809.1458, ['y'] = 318.8099, ['z'] = 89.3713 }
	},
	["FIB"] = {
		positionFrom = { ['x'] = 136.1087, ['y'] = -761.8151, ['z'] = 242.1519 },
		positionTo = { ['x'] = 136.2241, ['y'] = -761.9185, ['z'] = 45.7520 }
	},
	["BUNKERARMA"] = {
		positionFrom = { ['x'] = 2060.53, ['y'] = 2992.57, ['z'] = -72.7 },
		positionTo = { ['x'] = 32.18, ['y'] = -626.92, ['z'] = 10.77 }
	},
	["PILOTO"] = {
		positionFrom = { ['x'] = -75.54, ['y'] = -824.96, ['z'] = 321.3 },
		positionTo = { ['x'] = -84.43, ['y'] = -823.38, ['z'] = 36.03 }
	},
	["LIFEINVADER"] = {
		positionFrom = { ['x'] = -1048.43, ['y'] = -238.46, ['z'] = 44.02 },
		positionTo = { ['x'] = -1046.68, ['y'] = -237.94, ['z'] = 44.02 }
	},
	["MOTOCLUB"] = {
		positionFrom = { ['x'] = 988.4, ['y'] = -141.43, ['z'] = 73.1},
		positionTo = { ['x'] = 894.49, ['y'] = -3245.88, ['z'] = -98.25 }
	}
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			local x,y,z = table.unpack(GetEntityCoords(ped))
			for k,v in pairs(Teleport) do
				if Vdist(v.positionFrom.x,v.positionFrom.y,v.positionFrom.z,x,y,z) <= 1.2 then
					DrawMarker(21,v.positionFrom.x,v.positionFrom.y,v.positionFrom.z-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,255,230,100,100,0,0,0,1)
					if IsControlJustPressed(0,38) then
						SetEntityCoords(ped,v.positionTo.x,v.positionTo.y,v.positionTo.z-0.50)
					end
				end

				if Vdist(v.positionTo.x,v.positionTo.y,v.positionTo.z,x,y,z) <= 1.2 then
					DrawMarker(21,v.positionTo.x,v.positionTo.y,v.positionTo.z-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,255,230,100,100,0,0,0,1)
					if IsControlJustPressed(0,38) then
						SetEntityCoords(ped,v.positionFrom.x,v.positionFrom.y,v.positionFrom.z-0.50)
					end
				end
			end
		end
	end
end)