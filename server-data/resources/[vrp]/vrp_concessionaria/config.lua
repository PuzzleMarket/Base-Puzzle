Config = {}

Config.AbertoAll = false
Config.TotalGaragem = 5
Config.Veiculos = {

    {
        categoria = {title="Carros", id="carros"},
        veiculos = {
            {title = "Streiter", model="streiter", mala=70, preco=200000, estoque = 15},
            {title = "Blista", model="blista", mala=40, preco=13500, estoque = 15},
            {title = "Brioso", model="brioso", mala=30, preco=17000, estoque = 15},
            {title = "Panto", model="panto", mala=20, preco=5000, estoque = 35},
			{title = "Rhapsody", model="rhapsody", mala=30, preco=7000, estoque = 35},
            {title = "Primo 2", model="primo2", mala=40, preco=40200, estoque = 5},
            {title = "Stanier", model="stanier", mala=40, preco=10000, estoque = 10},
            {title = "sentinel 3", model="sentinel3", mala=30, preco=89000, estoque = 20},
			{title = "Casco", model="casco", mala=50, preco=160000, estoque = 10},
            {title = "Fagaloa", model="fagaloa", mala=80, preco=600000, estoque = 10},
            {title = "rapidgt", model="rapidgt", mala=20, preco=200000, estoque = 10},
            {title = "toros", model="toros", mala=50, preco=210000, estoque = 5},
			{title = "schafter4", model="schafter4", mala=50, preco=125000, estoque = 5},
            {title = "prairie", model="prairie", mala=25, preco=23150, estoque = 5}, 
            {title = "dilettante", model="dilettante", mala=30, preco=45700, estoque = 10},  
            {title = "Sentinel 2", model="sentinel2", mala=40, preco=65000, estoque = 10},
        }
    },
    {
        categoria = {title="Conversíveis", id="conversivel"},
        veiculos = {
            {title = "Issi 2", model="issi2", mala=30, preco=61850, estoque = 5},
            {title = "Chino 2", model="chino2", mala=60, preco=72500, estoque = 10}, 
            {title = "Bifta", model="bifta", mala=20, preco=61830, estoque = 10},
            {title = "Ninef 2", model="ninef2", mala=40, preco=140000, estoque = 5},
            {title = "Surano", model="surano", mala=40, preco=300500, estoque = 5},
            {title = "Rapidgt 2", model="rapidgt2", mala=20, preco=250000, estoque = 10},
            {title = "carbonizzare", model="carbonizzare", mala=30, preco=320000, estoque = 8},
        }
    },
    {
        categoria = {title="Esportivos", id="esportivo"},
        veiculos = {
            {title = "Dominator", model="dominator", mala=50, preco=93000, estoque = 5},
            {title = "bestiagts", model="bestiagts", mala=60, preco=200000, estoque = 5},
            {title = "jester", model="jester", mala=30, preco=138000, estoque = 5},
            {title = "kuruma", model="kuruma", mala=50, preco=170000, estoque = 10},
            {title = "rapidgt 3", model="rapidgt3", mala=40, preco=123000, estoque = 5},
            {title = "dominator 3", model="dominator3", mala=45, preco=105000, estoque = 5},
            {title = "Ninef", model="ninef", mala=40, preco=125000, estoque = 5},
            {title = "italigto", model="italigto", mala=30, preco=485000, estoque = 7},
            {title = "Pariah", model="pariah", mala=30, preco=235000, estoque = 7},
            {title = "Pfister 811", model="pfister811", mala=20, preco=450000, estoque = 5},
            {title = "T20", model="t20", mala=20, preco=650000, estoque = 5},
            {title = "seven70", model="seven70", mala=30, preco=1300000, estoque = 10},
            {title = "neon", model="neon", mala=30, preco=1250000, estoque = 10},
        }
    },
    {
        categoria = {title="Caminhonetes", id="caminhonete"},
        veiculos = {
            {title = "Sandking", model="sandking", mala=100, preco=200000, estoque = 5},
            {title = "Sandking 2", model="sandking2", mala=100, preco=235000, estoque = 5},
            {title = "Contender", model="contender", mala=70, preco=125000, estoque = 5},
            {title = "guardian", model="guardian", mala=100, preco=385000, estoque = 5},
            {title = "ratloader", model="ratloader", mala=30, preco=63000, estoque = 5},
            {title = "freecrawler", model="freecrawler", mala=50, preco=300000, estoque = 5},
        }
    },
    {
        categoria = {title="Antigos", id="antigos"},
        veiculos = {
            {title = "btype 3", model="btype3", mala=40, preco=60500, estoque = 5},
            {title = "stafford", model="stafford", mala=40, preco=95000, estoque = 10},
            {title = "tulip", model="tulip", mala=60, preco=114000, estoque = 5},
            {title = "Vamos", model="vamos", mala=60, preco=110000, estoque = 5},
            {title = "buccaneer", model="buccanner", mala=45, preco=115000, estoque = 5},
            {title = "buccaneer2", model="buccaneer2", mala=45, preco=160000, estoque = 5}, 
            {title = "Impaler", model="impaler", mala=60, preco=170000, estoque = 5},
            {title = "phoenix", model="phoenix", mala=40, preco=105000, estoque = 5},
            {title = "gauntlet", model="gauntlet", mala=40, preco=100000, estoque = 5},
            {title = "ellie", model="ellie", mala=50, preco=100000, estoque = 5},
        }
    },
    {
        categoria = {title="Motos", id="motos"},
        veiculos = {
            {title = "akuma", model="akuma", mala=15, preco=350000, estoque = 10},
            {title = "avarus", model="avarus", mala=15, preco=123000, estoque = 5},
            {title = "bf400", model="bf400", mala=15, preco=105000, estoque = 25},
            {title = "daemon", model="daemon", mala=15, preco=62000, estoque = 5},
            {title = "daemon 2", model="daemon2", mala=15, preco=105000, estoque = 5},
            {title = "enduro", model="enduro", mala=15, preco=30000, estoque = 5},
            {title = "esskey", model="esskey", mala=15, preco=30000, estoque = 10},
            {title = "faggio", model="faggio", mala=30, preco=3000, estoque = 15},
            {title = "faggio 3", model="faggio3", mala=30, preco=5000, estoque = 10},
            {title = "nightblade", model="nightblade", mala=15, preco=260000, estoque = 10},
            {title = "pcj", model="pcj", mala=15, preco=17000, estoque = 20},
            {title = "sanchez2", model="sanchez2", mala=15, preco=97000, estoque = 25},
            {title = "vader", model="vader", mala=15, preco=140000, estoque = 5},
            {title = "double", model="double", mala=15, preco=123000, estoque = 10},
            {title = "cliffhanger", model="cliffhanger", mala=15, preco=390000, estoque = 10},
            {title = "diablous", model="diablous", mala=15, preco=205000, estoque = 10},
            {title = "hakuchou2", model="hakuchou2", mala=15, preco=483000, estoque = 10},
            {title = "vortex", model="vortex", mala=15, preco=98200, estoque = 10},
        }
    },
    {
        categoria = {title="Serviço", id="caminhao"},
        veiculos = {
            {title = "Benson", model="benson", mala=500, preco=500000, estoque = 30},            
            {title = "burrito", model="burrito", mala=100, preco=200000, estoque = 3},            
            --{title = "gburrito", model="gburrito", mala=100, preco=100000, estoque = 2},            
            {title = "burrito 2", model="burrito2", mala=100, preco=150000, estoque = 3},            
            {title = "rumpo", model="rumpo", mala=100, preco=100000, estoque = 3},            
            {title = "stretch", model="stretch", mala=60, preco=1500000, estoque = 5},            
        }
    },
    {
        categoria = {title="Importados", id="importados"},
        veiculos = {
            {title = "bmx", model="bmx", mala=15, preco=1, estoque = 5},        
            {title = "feltzer3", model="feltzer3", mala=30, preco=300000, estoque = 5},        
            {title = "infernus2", model="infernus2", mala=30, preco=450000, estoque = 5},        
            {title = "kamacho", model="kamacho", mala=50, preco=350000, estoque = 5},        
            -- {title = "mazda rx7", model="mazdarx7", mala=40, preco=1000000, estoque = 5},      
        }
    },
    
}

function getVeiculo(modelo)
    for i, cat in pairs(Config.Veiculos) do
        for i2, carro in pairs(cat.veiculos) do 
            if carro.model == modelo then
                return carro
            end
        end
    end
end


function getVeiculos()
    local veiculos = {}
    for i, cat in pairs(Config.Veiculos) do
        for i2, carro in pairs(cat.veiculos) do 
            veiculos[carro.model] = carro
        end
    end

    return veiculos
end