local cfg = {}

local surgery_male = { model = "mp_m_freemode_01" }
local surgery_female = { model = "mp_f_freemode_01" }
local travesti1 = { model = "a_m_m_tranvest_01" }
local travesti2 = { model = "a_m_m_tranvest_02" }
local gogoboy = { model = "u_m_y_staggrm_01" }
local deus = { model = "u_m_m_jesus_01" }
local padre = { model = "cs_priest" }
local pegrande = { model = "cs_orleans" }
local gato = { model = "a_c_cat_01" }
local pug = { model = "a_c_pug" }
local lessie = { model = "a_c_shepherd" }
local poodle = { model = "a_c_westy" }
local onca = { model = "a_c_mtlion" }
local chop = { model = "a_c_chop" }
local macaco = { model = "a_c_chimp" }

for i=0,19 do
	surgery_female[i] = { 1,0 }
	surgery_male[i] = { 1,0 }
end

cfg.cloakroom_types = {
	["Personagem"] = {
		_config = {permissions={"admin.permissao"}},
		["Travesti 1"] = travesti1,
		["Travesti 2"] = travesti2,
		["Gogoboy"] = gogoboy,
		["Deus"] = deus,
		["Padre"] = padre,
		["Pé Grande"] = pegrande,
		["Gato"] = gato,
		["Pug"] = pug,
		["Lessie"] = lessie,
		["Poodle"] = poodle,
		["Onça"] = onca,
		["Chop"] = chop,
		["Macaco"] = macaco
	},
	["PoliciaFederal"] = {
		_config = { permissions = {"policia.permissao"} },
		["M. Casual"] = {
		[1] = {121,0,2},
		[2] = {4,0,0},
		[3] = {0,0,2},
		[4] = {31,0,2},
		[5] = {-1,0,2},
		[6] = {24,0,2},
		[7] = {6,0,2},
		[8] = {15,0,2},
		[9] = {-1,0,2},
		[10] = {-1,0,2},
		[11] = {93,1,2},
		[12] = {0,0,0},
		[13] = {0,2,0},
		["p1"] = {5,0},
		["p0"] = {10,1}
		},
		["M. Tático"] = {
		[1] = {121,0,2},
		[2] = {4,0,0},
		[3] = {59,0,2},
		[4] = {33,0,2},
		[5] = {-1,0,2},
		[6] = {25,0,2},
		[7] = {1,0,2},
		[8] = {57,0,2},
		[9] = {7,2,2},
		[10] = {-1,0,2},
		[11] = {50,0,2},
		[12] = {0,0,0},
		[13] = {0,2,0},
		[16] = {0,2,1},
		["p1"] = {15,0},
		["p0"] = {66,0}
		},
		["F. Casual"] = {
		[1] = {121,0,2},
		[2] = {4,0,0},
		[3] = {14,0,2},
		[4] = {30,0,2},
		[5] = {-1,0,2},
		[6] = {25,0,2},
		[7] = {6,0,2},			
		[8] = {177,0,2},
		[9] = {-1,0,2},
		[10] = {-1,0,2},
		[11] = {84,1,2},
		[12] = {0,0,0},
		[13] = {0,2,0},
		[16] = {0,2,1},
		["p0"] = {10,1},
		["p1"] = {11,0},
		["p2"] = {-1,0},
		["p6"] = {-1,0},
		["p7"] = {-1,0}
		},
		["F. Tático"] = {
		[1] = {121,0,2},
		[2] = {4,0,0},
		[3] = {62,0,2},
		[4] = {32,0,2},
		[5] = {-1,0,2},
		[6] = {25,0,2},
		[7] = {1,0,2},			
		[8] = {34,0,2},
		[9] = {7,2,2},
		[10] = {-1,0,2},
		[11] = {42,0,2},
		[12] = {0,0,0},
		[13] = {0,2,0},
		[16] = {0,2,1},
		[17] = {512,2,0},
		["p0"] = {-1,0},
		["p1"] = {9,1},
		["p2"] = {-1,0},
		["p6"] = {-1,0},
		["p7"] = {-1,0}
	  	}
	},
	["PoliciaMilitar"] = {
		_config = { permissions = {"policia.permissao"} },
		["M. Casual"] = {
		[1] = {121,0,2},
		[2] = {4,0,0},
		[3] = {0,0,2},
		[4] = {47,0,2},
		[5] = {-1,0,2},
		[6] = {25,0,2},
		[7] = {1,0,2},			
		[8] = {57,0,2},
		[9] = {-1,0,2},
		[10] = {-1,0,2},
		[11] = {93,0,2},		
		["p0"] = {10,0},
		["p1"] = {5,0},
		["p2"] = {-1,0},
		["p6"] = {-1,0},
		["p7"] = {-1,0}
		},
		["M. Tático"] = {
		[1] = {121,0,2},
		[2] = {4,0,0},
		[3] = {59,0,2},
		[4] = {31,0,2},
		[5] = {-1,0,2},
		[6] = {25,0,2},
		[7] = {1,0,2},
		[8] = {57,0,2},
		[9] = {7,1,2},
		[10] = {-1,0,2},
		[11] = {222,20,2},
		[12] = {0,0,0},
		[13] = {0,2,0},
		[16] = {0,2,0},
		["p1"] = {5,0},
		["p0"] = {10,1}
		},
		["F. Casual"] = {
		[1] = {121,0,2},
		[2] = {4,0,0},
		[3] = {14,0,2},
		[4] = {49,0,2},
		[5] = {-1,0,2},
		[6] = {25,0,2},
		[7] = {1,0,2},			
		[8] = {34,0,2},
		[9] = {-1,0,2},
		[10] = {-1,0,2},
		[11] = {84,0,2},
		[16] = {0,2,1},
		[17] = {0,2,0},
		["p0"] = {10,0},
		["p1"] = {11,0},
		["p2"] = {-1,0},
		["p6"] = {-1,0},
		["p7"] = {-1,0}
		},
		["F. Tático"] = {
		[1] = {121,0,2},
		[2] = {4,0,0},
		[3] = {62,0,2},
		[4] = {30,0,2},
		[5] = {-1,0,2},
		[6] = {25,0,2},
		[7] = {1,0,2},			
		[8] = {34,0,2},
		[9] = {7,1,2},
		[10] = {-1,0,2},
		[11] = {42,0,2},
		[12] = {0,0,0},
		[13] = {0,2,0},
		[16] = {0,2,1},
		[17] = {0,2,0},
		["p0"] = {10,0},
		["p1"] = {11,0},
		["p2"] = {-1,0},
		["p6"] = {-1,0},
		["p7"] = {-1,0}
	  	}
	},
	["SAMU"] = {
		_config = { permissions = {"paramedico.permissao"} },
		["Masculino 1"] = {
		[1] = { 121,0,2 },
		[3] = { 74,0,2 },
		[4] = { 96,0,2 },
		[5] = { -1,0,2 },
		[6] = { 56,1,2 },
		[7] = { 127,0,2 },
		[8] = { 56,1,2 },
		[9] = { -1,0,2 },
		[10] = { 58,0,2 },
		[11] = { 250,0,2 },
		["p0"] = { -1,0 },
		["p1"] = { -1,0 },
		["p2"] = { -1,0 },
		["p6"] = { -1,0 },
		["p7"] = { -1,0 }
		},
		["Masculino 2"] = {
		[1] = { 121,0,2 },
		[3] = { 81,0,2 },
		[4] = { 10,0,2 },
		[5] = { -1,0,2 },
		[6] = { 56,1,2 },
		[7] = { 127,0,2 },			
		[8] = { 56,1,2 },
		[9] = { -1,0,2 },
		[10] = { 58,0,2 },
		[11] = { 95,1,2 },
		["p0"] = { -1,0 },
		["p1"] = { -1,0 },
		["p2"] = { -1,0 },
		["p6"] = { -1,0 },
		["p7"] = { -1,0 }
		},
		["Masculino 3"] = {
		[1] = { 121,0,2 },
		[3] = { 38,0,2 },
		[4] = { 96,0,2 },
		[5] = { -1,0,2 },
		[6] = { 56,1,2 },
		[7] = { 126,0,2 },			
		[8] = { 71,3,2 },
		[9] = { -1,0,2 },
		[10] = { 57,0,2 },
		[11] = { 249,0,2 },
		["p0"] = { -1,0 },
		["p1"] = { -1,1 },
		["p2"] = { -1,0 },
		["p6"] = { -1,0 },
		["p7"] = { -1,0 }
		},
		["Masculino 4"] = {
		[1] = { -1,0,2 },
		[3] = { 81,0,2 },
		[4] = { 25,5,2 },
		[5] = { -1,0,2 },
		[6] = { 21,9,2 },
		[7] = { 126,0,2 },			
		[8] = { 56,1,2 },
		[9] = { -1,0,2 },
		[10] = { -1,0,2 },
		[11] = { 13,0,2 },
		["p0"] = { -1,0 },
		["p1"] = { -1,0 },
		["p2"] = { -1,0 },
		["p6"] = { -1,0 },
		["p7"] = { -1,0 }
		},
		["Masculino 5"] = {
		[1] = { -1,0,2 },
		[3] = { 4,0,2 },
		[4] = { 25,5,2 },
		[5] = { -1,0,2 },
		[6] = { 21,9,2 },
		[7] = { 126,0,2 },			
		[8] = { 31,0,2 },
		[9] = { -1,0,2 },
		[10] = { -1,0,2 },
		[11] = { 31,7,2 },
		["p0"] = { -1,0 },
		["p1"] = { -1,0 },
		["p2"] = { -1,0 },
		["p6"] = { -1,0 },
		["p7"] = { -1,0 }
		},
		["Masculino 6"] = {
		[1] = { -1,0,2 },
		[3] = { 74,0,2 },
		[4] = { 3,3,2 },
		[5] = { -1,0,2 },
		[6] = { 7,0,2 },
		[7] = { 126,0,2 },			
		[8] = { 15,0,2},
		[9] = { -1,0,2 },
		[10] = { -1,0,2 },
		[11] = { 16,1,2 },
		["p0"] = { -1,0 },
		["p1"] = { -1,0 },
		["p2"] = { -1,0 },
		["p6"] = { -1,0 },
		["p7"] = { -1,0 }
		},
		["Feminino 1"] = {
		[1] = { 121,0,2 },
		[3] = { 96,0,2 },
		[4] = { 99,0,2 },
		[5] = { -1,0,2 },
		[6] = { 27,0,2 },
		[7] = { 97,0,2 },
		[8] = { 27,1,2 },
		[9] = { -1,0,2 },
		[10] = { 66,0,2 },
		[11] = { 258,0,2 },
		["p0"] = { -1,0 },
		["p1"] = { -1,0 },
		["p2"] = { -1,0 },
		["p6"] = { -1,0 },
		["p7"] = { -1,0 }
		},
		["Feminino 2"] = {
		[1] = { 0,0,2 },
		[3] = { 106,1,2 },
		[4] = { 37,0,2 },
		[5] = { 0,0,2 },
		[6] = { 27,0,2 },
		[7] = { 97,0,2 },			
		[8] = { 27,1,2 },
		[9] = { -1,0,2 },
		[10] = { 66,0,2 },
		[11] = { 86,1,2 },
		["p0"] = { -1,0 },
		["p1"] = { -1,0 },
		["p2"] = { -1,0 },
		["p6"] = { -1,0 },
		["p7"] = { -1,0 }
		},
		["Feminino 3"] = {
		[1] = { 121,0,2 },
		[3] = { 18,0,2 },
		[4] = { 99,0,2 },
		[5] = { -1,0,2 },
		[6] = { 27,0,2 },
		[7] = { 14,3,2 },
		[8] = { 77,3,2 },		
		[9] = { -1,0,2 },
		[10] = { 65,0,2 },
		[11] = { 257,0,2 },		
		["p0"] = { -1,0 },
		["p1"] = { -1,0 },
		["p2"] = { -1,0 },
		["p6"] = { -1,0 },
		["p7"] = { -1,0 }
		},
		["Feminino 4"] = {
		[1] = { -1,0,2 },
		[3] = { 85,0,2 },
		[4] = { 37,5,2 },
		[5] = { -1,0,2 },
		[6] = { 10,1,2 },
		[7] = { 14,3,2 },		
		[8] = { 27,1,2 },
		[9] = { -1,0,2 },
		[10] = { -1,0,2 },
		[11] = { 27,0,2 },
		["p0"] = { -1,0 },
		["p1"] = { -1,0 },
		["p2"] = { -1,0 },
		["p6"] = { -1,0 },
		["p7"] = { -1,0 }
		},
		["Feminino 5"] = {
		[1] = { -1,0,2 },
		[3] = { 1,0,2 },
		[4] = { 37,5,2 },
		[5] = { -1,0,2 },
		[6] = { 0,2,2 },
		[7] = { 14,3,2 },		
		[8] = { 64,2,2 },
		[9] = { -1,0,2 },
		[10] = { -1,0,2 },
		[11] = { 57,7,2 },
		["p0"] = { -1,0 },
		["p1"] = { -1,0 },
		["p2"] = { -1,0 },
		["p6"] = { -1,0 },
		["p7"] = { -1,0 }
		},
		["Feminino 6"] = {
		[1] = { -1,0,2 },
		[3] = { 96,0,2 },
		[4] = { 3,13,2 },
		[5] = { -1,0,2 },
		[6] = { 10,1,2 },
		[7] = { 14,3,2 },
		[8] = { 15,0,2 },
		[9] = { -1,0,2 },
		[10] = { -1,0,2 },	
		[11] = { 141,1,2 },		
		["p0"] = { -1,0 },
		["p1"] = { -1,0 },
		["p2"] = { -1,0 },
		["p6"] = { -1,0 },
		["p7"] = { -1,0 }
		}
	}
}

cfg.cloakrooms = {
	{ "Personagem",		206.82,-1002.02,29.29 },
	{ "PoliciaFederal",	124.24,-746.94,242.15 },
	{ "PoliciaMilitar",	458.60,-990.98,30.68  },
	{ "SAMU",			300.07,-596.17,43.28  }
}

return cfg