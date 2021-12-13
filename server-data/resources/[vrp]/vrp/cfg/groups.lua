local cfg = {}

cfg.groups = {
	["Admin"] = {
		"admin.permissao",
		"polpar.permissao",
		"ticket.permissao",
		"mod.permissao"
	},
	["Mod"] = {
		"mod.permissao",
		"polpar.permissao",
		"ticket.permissao"
	},
	["Suporte"] = {
		_config = {
			title = "Suporte",
			gtype = "suporte"
		},
		"suporte.permissao",
		"ticket.permissao"
	},
	["Blips"] = {
		"blips.permissao"
	},
	-----------------------------------------------------
	-- Recruta
	["Recruta"] = {
		_config = {
			title = "Recruta",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"recruta.servico",
		"recruta.arsenal",
		"sem.permissao"
	},
	["PaisanaRecruta"] = {
		_config = {
			title = "Recruta Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"recruta.folga",
		"sem.permissao"
	},
	-- Soldado
	["Soldado"] = {
		_config = {
			title = "Soldado",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"soldesarg.arsenal",
		"portadp.permissao",
		"soldado.servico",
		"sem.permissao"
	},
	["PaisanaSoldado"] = {
		_config = {
			title = "Soldado Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"soldado.folga",
		"sem.permissao"
	},
	-- Sargento
	["Sargento"] = {
		_config = {
			title = "Sargento",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"soldesarg.arsenal",
		"sargento.servico",
		"sem.permissao"
	},
	["PaisanaSargento"] = {
		_config = {
			title = "Sargento Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"sargento.folga",
		"sem.permissao"
	},
	-- Tenete
	["Tenente"] = {
		_config = {
			title = "Tenente",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"tenenteecoronel.arsenal",
		"tenente.servico",
		"sem.permissao"
	},
	["PaisanaTenente"] = {
		_config = {
			title = "Tenente Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"tenente.folga",
		"sem.permissao"
	},
	-- Capitão
	["Capitão"] = {
		_config = {
			title = "Capitão",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"capitaoecoronel.arsenal",
		"capitao.servico",
		"sem.permissao"
	},
	["PaisanaCapitão"] = {
		_config = {
			title = "Capitão Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"capitao.folga",
		"sem.permissao"
	},
	-- Ten. Coronel
	["TenCoronel"] = {
		_config = {
			title = "Ten. Coronel",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"tencoronelecoronel.arsenal",
		"tencoronel.servico",
		"sem.permissao"
	},
	["PaisanaTenCoronel"] = {
		_config = {
			title = "T. Cel. Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"tencoronel.folga",
		"sem.permissao"
	},
	-- Coronel
	["Coronel"] = {
		_config = {
			title = "Coronel",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"tenenteecoronel.arsenal",
		"coronel.servico",
		"sem.permissao"
	},
	["PaisanaCoronel"] = {
		_config = {
			title = "Coronel Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"coronel.folga",
		"sem.permissao"
	},
	-- Pode usar o /add  para recrutar policiais
	["LiderPolicia"] = {
		_config = {
			title = "LiderPolicia",
			gtype = "lider"
		},
		"liderpolicia.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"sem.permissao"
	},
	-----------------------------------------------------
	-- Enfermeiro
	["Enfermeiro"] = {
		_config = {
			title = "Enfermeiro",
			gtype = "job"
		},
		"paramedico.permissao",
		"enfermeiro.servico",
		"polpar.permissao",
		"sem.permissao"
	}, 
	["PaisanaEnfermeiro"] = {
		_config = {
			title = "Enfermeiro Folga",
			gtype = "job"
		},
		"paisanaenfermeiro.permissao",
		"enfermeiro.folga",
		"sem.permissao"
	},
	-- Paramédico
	["Paramedico"] = {
		_config = {
			title = "Paramédico",
			gtype = "job"
		},
		"paramedico.permissao",
		"paramedico.servico",
		"polpar.permissao",
		"sem.permissao"
	}, 
	["PaisanaParamedico"] = {
		_config = {
			title = "Paramédico Folga",
			gtype = "job"
		},
		"paisanaparamedico.permissao",
		"paramedico.folga",
		"sem.permissao"
	},
	-- Médico
	["Medico"] = {
		_config = {
			title = "Médico",
			gtype = "job"
		},
		"paramedico.permissao",
		"medico.servico",
		"polpar.permissao",
		"sem.permissao"
	}, 
	["PaisanaMedico"] = {
		_config = {
			title = "Médico Folga",
			gtype = "job"
		},
		"paisanamedico.permissao",
		"medico.folga",
		"sem.permissao"
	},
	-- Diretor
	["Diretor"] = {
		_config = {
			title = "Diretor",
			gtype = "job"
		},
		"paramedico.permissao",
		"diretor.servico",
		"polpar.permissao",
		"sem.permissao"
	}, 
	["PaisanaDiretor"] = {
		_config = {
			title = "Diretor Folga",
			gtype = "job"
		},
		"diretor.folga",
		"sem.permissao"
	},
	-----------------------------------------------------
	["Mecanico"] = {
		_config = {
			title = "Mecanico",
			gtype = "job"
		},
		"mecanico.permissao",
		"reparo.permissao",
		"callmec.permissao",
		"sem.permissao"
	},
	["PaisanaMecanico"] = {
		_config = {
			title = "Mecanico Folga",
			gtype = "job"
		},
		"paisanamecanico.permissao"
	},
	["Prata"] = {
		_config = {
			title = "Prata",
			gtype = "vip"
		},
		"prata.permissao"
	},
	["Ouro"] = {
		_config = {
			title = "Ouro",
			gtype = "vip"
		},
		"ouro.permissao",
		"barcos.permissao"
	},
	["Platina"] = {
		_config = {
			title = "Platina",
			gtype = "vip"
		},
		"barcos.permissao",
		"heli.permissao",
		"platina.permissao",
		"mochila.permissao"
	},
	["Dope"] = { 
		_config = {
			title = "Dope",
			gtype = "job"
		},
		"dope.permissao",
		"ilegal.permissao"
	},
	["Dust"] = {
		_config = {
			title = "Dust",
			gtype = "job"
		},
		"dust.permissao",
		"ilegal.permissao"
	},
	["Motoclub"] = {
		_config = {
			title = "Motoclub",
			gtype = "job"
		},
		"motoclub.permissao",
		"municao.permissao",
		"ilegal.permissao"
	},
	["Bratva"] = {
		_config = {
			title = "Bratva",
			gtype = "job"
		},
		"bratva.permissao",
		"municao.permissao",
		"ilegal.permissao"
	},
	["Lifeinvader"] = {
		_config = {
			title = "Lifeinvader",
			gtype = "job"
		},
		"lifeinvader.permissao",
		"lavagem.permissao",
		"ilegal.permissao"
	},
	["Zetas"] = {
		_config = {
			title = "Los Zetas",
			gtype = "job"
		},
		"loszetas.permissao",
		"ilegal.permissao"
	},
	["Mecanicolider"] = {
		_config = {
			title = "Líder Mecânico",
			gtype = "lider"
		},
		"mecanicolider.permissao"
	},
	["LiderHospital"] = {
		_config = {
			title = "LiderHospital",
			gtype = "lider"
		},
		"liderparamedico.permissao",
		"sem.permissao"
	},
	["Motoclublider"] = {
		_config = {
			title = "Líder Motoclub",
			gtype = "lider"
			},
		"lidermotoclub.permissao",
		"ilegal.permissao"
	},
	["Zetaslider"] = {
		_config = {
			title = "Líder Los Zetas",
			gtype = "lider"
			},
		"liderloszetas.permissao",
		"loszetas.permissao",
		"ilegal.permissao"
	},
	["Dopelider"] = {
		_config = {
			title = "Líder Dope",
			gtype = "lider"
			},
		"liderdope.permissao",
		"dope.permissao",
		"ilegal.permissao"
	},
	["Dustlider"] = {
		_config = {
			title = "Líder Dust",
			gtype = "lider"
			},
		"liderdust.permissao",
		"dust.permissao",
		"ilegal.permissao"
	},
	["Bratvalider"] = {
		_config = {
			title = "Líder Bratva",
			gtype = "lider"
			},
		"liderbratva.permissao",
		"bratva.permissao",
		"ilegal.permissao"
	},
	["Lifeinvaderlider"] = {
		_config = {
			title = "Líder Lifeinvader",
			gtype = "lider"
			},
		"lifeinvader.permissao",
		"lavagem.permissao",
		"liderlifeinvader.permissao",
		"ilegal.permissao"
	},		
}

cfg.users = {
	[1] = { "Admin" }
}

cfg.selectors = {

}

return cfg