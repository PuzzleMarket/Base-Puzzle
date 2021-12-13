local pedlist = {
	{ ['x'] = 2432.78, ['y'] = 4802.78, ['z'] = 34.82, ['h'] = 128.22, ['hash'] = 0xFCFA9E1E, ['hash2'] = "A_C_Cow" },
	{ ['x'] = 2440.98, ['y'] = 4794.38, ['z'] = 34.66, ['h'] = 128.22, ['hash'] = 0xFCFA9E1E, ['hash2'] = "A_C_Cow" },
	{ ['x'] = 2449.0, ['y'] = 4786.67, ['z'] = 34.65, ['h'] = 128.22, ['hash'] = 0xFCFA9E1E, ['hash2'] = "A_C_Cow" },
	{ ['x'] = 2457.28, ['y'] = 4778.75, ['z'] = 34.52, ['h'] = 128.22, ['hash'] = 0xFCFA9E1E, ['hash2'] = "A_C_Cow" },
	{ ['x'] = 2464.67, ['y'] = 4770.23, ['z'] = 34.38, ['h'] = 128.22, ['hash'] = 0xFCFA9E1E, ['hash2'] = "A_C_Cow" }
}

Citizen.CreateThread(function()
	for k,v in pairs(pedlist) do
		RequestModel(GetHashKey(v.hash2))
		while not HasModelLoaded(GetHashKey(v.hash2)) do
			Citizen.Wait(10000)
		end

		local ped = CreatePed(4,v.hash,v.x,v.y,v.z-1,v.h,false,true)
		FreezeEntityPosition(ped,true)
		SetEntityInvincible(ped,true)

	end
end)