function init_gear()
    gear = {}

    -- You don't have to use this, but I find it super useful for
    -- augmented gear that I use across multiple jobs.

    -- All jobs pieces
    gear.ammo = {}
    gear.ammo.dt = { name="Staunch Tathlum" }

    gear.neck = {}
    gear.neck.cure_potency = { name="Phalaina Locket" }
    gear.neck.dt = { name="Twilight Torque" }
    gear.neck.idle = { name="Twilight Torque" }
    gear.neck.enmity = { name="Invidia Torque" }
    gear.neck.regen = { name="Wiglen Gorget" }
    gear.neck.mab = { name="Eddy Necklace" }
    gear.neck.macc = { name="Sanctity Necklace" }
    gear.neck.acc = { name="Sanctity Necklace" }
    gear.neck.regen = { name="Wiglen Gorget" }
    gear.neck.tp = { name="Sanctity Necklace" }
    gear.neck.ws = { name="Fotia Gorget" }
    gear.neck.sword = { name="Decimus Torque" }
    gear.neck.greataxe = { name="Decimus Torque" }

    gear.ears = {}
    gear.ears.da_left = { name="Bladeborn Earring" }
    gear.ears.da_right = { name="Steelflash Earring" }
    gear.ears.dw_left = { name="Dudgeon Earring" }
    gear.ears.dw_right = { name="Heartseeker Earring" }
    gear.ears.fc_right = { name="Loquac. Earring" }
    gear.ears.idle_left = { name="Hearty Earring" }
    gear.ears.idle_right = { name="Ethereal Earring" }
    gear.ears.macc_mnd = { name="Lifestorm Earring" }
    gear.ears.macc_int = { name="Psystorm Earring" }
    gear.ears.ws = { name="Moonshade Earring" }
    gear.ears.mab_left = { name="Friomisi Earring" }
    gear.ears.mab_right = { name="Hecate's Earring" }

    gear.ring = {}
    gear.ring.cure_potency = { name="Lebeche Ring" }
    gear.ring.dt_left = { name="Defending Ring" }
    gear.ring.dt_right = { name="Vocane Ring" }
    gear.ring.regen_left = { name="Sheltered Ring" }
    gear.ring.regen_right = { name="Paguroidea Ring" }
    gear.ring.fc_left = { name="Lebeche Ring" }
    gear.ring.fc_right = { name="Veneficium Ring" }
    gear.ring.macc = { name="Sangoma Ring" }
    gear.ring.healing_left = { name="Sirona's Ring" }
    gear.ring.healing_right = { name="Ephedra Ring" }

    gear.waist = {}
    gear.waist.hp = { name="Ocean Sash" }
    gear.waist.ws = { name="Fotia Belt" }
    gear.waist.obi = { name="Hachirin-no-obi" }
    gear.waist.fc = { name="Witful Belt" }
    gear.waist.macc = { name="Porous Rope" }
    gear.waist.mage_idle = { name="Porous Rope" }
    gear.waist.pdt = { name="Flume Belt +1" }
    gear.waist.conserve_mp = { name="Austerity Belt" }
    gear.waist.highacc = { name="Anguinus Belt" }
    gear.waist.nohaste = { name="Windbuffet Belt +1" }
    gear.waist.highhaste = { name="Pya'ekue Belt +1" }

    gear.back = {}
    gear.back.conserve_mp = { name="Solemnity Cape" }
    gear.back.cure_potency = { name="Solemnity Cape" }
    gear.back.divine = { name="Altruistic Cape" }
    gear.back.dt = { name="Solemnity Cape" }
    gear.back.mage_idle = { name="Umbra Cape" }
    gear.back.macc = { name="Refraction Cape" }
    gear.back.fc = { name="Swith Cape" }


    -- Random all jobs visible pieces
    gear.head = {}
    gear.head.mage_refresh = { name="Befouled Crown" }
    gear.body = {}
    gear.body.mage_cure_potency = { name="Vrikodara Jupon" }
    gear.body.mage_fc = { name="Vrikodara Jupon" }
    gear.body.mage_idle = { name="Vrikodara Jupon" }
    gear.hands = {}
    gear.hands.mage_fc = { name="Repartie Gloves" }
    gear.hands.melee_fc = { name="Leyline Gloves", augments={'Accuracy+12', 'Mag. Acc.+14', '"Mag. Atk. Bns."+15', '"Fast Cast"+2'} }
    gear.legs = {}
    gear.legs.mage_pdt = { name="Miasmic Pants" }
    gear.feet = {}



    -- JSE Capes
    gear.jsecapes = {}
    gear.jsecapes.blu = { name="Cornflower Cape", augments={'MP+27', 'DEX+1', 'Accuracy+5', 'Blue magic skill +10'}}
    gear.jsecapes.pld = { name="Weard Mantle", augments={'DEX+1', 'VIT+2', 'Enmity+4', '"Phalanx"+5'}}
    gear.jsecapes.amb = {}
    gear.jsecapes.amb.blu = { name="Rosmerta's Cape"}
    gear.jsecapes.amb.blu.idle = { name="Rosmerta's Cape"}
    gear.jsecapes.amb.blu.tp = { name="Rosmerta's Cape"}
    gear.jsecapes.amb.blu.ws = { name="Rosmerta's Cape"}
    gear.jsecapes.amb.pld = { name="Rudianos's Mantle"}
    gear.jsecapes.amb.pld.idle = { name="Rudianos's Mantle"}
    gear.jsecapes.amb.pld.tp = { name="Rudianos's Mantle"}
    gear.jsecapes.amb.pld.ws = { name="Rudianos's Mantle"}
    gear.jsecapes.amb.war = { name="Cichol's Mantle"}
    gear.jsecapes.amb.war.idle = { name="Cichol's Mantle"}
    gear.jsecapes.amb.war.tp = { name="Cichol's Mantle"}
    gear.jsecapes.amb.war.ws = { name="Cichol's Mantle"}


    -- Skirmish pieces
    gear.hagondes = {}
    gear.hagondes.body = { name="Hagondes Coat +1" }
    gear.hagondes.body.pdt = { name="Hagondes Coat +1", augments={'Phys. dmg. taken -3%'}}

    gear.gendewitha = {}
    gear.gendewitha.head = { name="Gende. Caubeen +1" }
    gear.gendewitha.head.pdt = { name="Gende. Caubeen +1", augments={'Phys. dmg. taken -4%', '"Cure" spellcasting time -1%'} }

    -- Alluvion Skirmish pieces
    gear.yorium = {}
    gear.yorium.head = { name="Yorium Barbuta" }
    gear.yorium.body = { name="Yorium Cuirass" }
    gear.yorium.hands = { name="Yorium Gauntlets" }
    gear.yorium.hands.idle = { name="Yorium Gauntlets", augments={'Enmity+3', 'Phys. dmg. taken -2%'}}
    gear.yorium.legs = { name="Yorium Cuisses"}
    gear.yorium.legs.idle = { name="Yorium Cuisses"}
    gear.yorium.feet = {}

    gear.acro = {}
    gear.acro.head = { name="Acro Helm" }
    gear.acro.head.tp = { name="Acro Helm", augments={'STR+3 VIT+3', 'Accuracy+15 Attack+15', '"Store TP"+2'}}
    gear.acro.body = {}
    gear.acro.body.tp = { name="Acro Surcoat", augments={'Accuracy+20 Attack+20','"Store TP"+6','STR+6 AGI+6'}}
    gear.acro.hands = {}
    gear.acro.hands.tp = { name="Acro Gauntlets", augments={'HP+19', 'Accuracy+15 Attack+15', '"Store TP"+3'}}
    gear.acro.legs = { name="Acro Breeches" }
    gear.acro.legs.tp = { name="Acro Breeches", augments={'VIT+10', 'Attack+22', '"Dbl. Atk."+2'}}
    gear.acro.feet = { name="Acro Leggings" }
    gear.acro.feet.tp = { name="Acro Leggings", augments={'Accuracy+20', '"Store TP"+5', 'Sklchn. dmg. +3%'}}

    gear.taeon = {}
    gear.taeon.head = { name="Taeon Chapeau" }
    gear.taeon.head.tp = { name="Taeon Chapeau", augments={'Accuracy+15 Attack+15', 'Triple Atk.+2', 'Weapon skill damage +1%'}}
    gear.taeon.head.ws = { name="Taeon Chapeau", augments={'Accuracy+15 Attack+15', 'Triple Atk.+2', 'Weapon skill damage +1%'}}
    gear.taeon.body = { name="Taeon Tabard"}
    gear.taeon.body.tp = { name="Taeon Tabard", augments={'STR+3 DEX+3', 'Accuracy+19 Attack+19', '"Dual Wield"+5'}}
    gear.taeon.body.ws = { name="Taeon Tabard", augments={'STR+3 DEX+3', 'Accuracy+19 Attack+19', '"Dual Wield"+5'}}
    gear.taeon.hands = { name="Taeon Gloves"}
    gear.taeon.hands.tp = { name="Taeon Gloves", augments={'DEX+10', 'Accuracy+18 Attack+18', '"Dual Wield"+4'}}
    gear.taeon.hands.ws = { name="Taeon Gloves", augments={'DEX+10', 'Accuracy+18 Attack+18', '"Dual Wield"+4'}}
    gear.taeon.legs = { name="Taeon Tights" }
    gear.taeon.legs.tp = { name="Taeon Tights", augments={'Accuracy+20 Attack+20','"Triple Atk."+2','Crit. hit damage +3%' }}
    gear.taeon.legs.ws = { name="Taeon Tights", augments={'Accuracy+20 Attack+20','"Triple Atk."+2','Crit. hit damage +3%' }}
    gear.taeon.feet = { name="Taeon Boots"}
    gear.taeon.feet.tp = { name="Taeon Boots", augments={'Accuracy+19 Attack+19', '"Dual Wield"+5'}}
    gear.taeon.feet.ws = { name="Taeon Boots", augments={'Accuracy+19 Attack+19', '"Dual Wield"+5'}}

    gear.helios = {}
    gear.helios.head = {}
    gear.helios.head.macc = { name="Helios Band", augments={'Mag. Acc.+25','Magic crit. hit rate +4'}}
    gear.helios.head.MAB = { name="Helios Band", augments={'"Mag.Atk.Bns."+17'}}
    gear.helios.body = { name="Helios Jacket"}
    gear.helios.body.macc = { name="Helios Jacket", augments={'Mag. Acc.+11 "Mag.Atk.Bns."+11','Magic crit. hit rate +3'}}
    gear.helios.body.MAB = { name="Helios Jacket", augments={'Mag. Acc.+11 "Mag.Atk.Bns."+11','Magic crit. hit rate +3'}}
    gear.helios.hands = {}
    gear.helios.hands.MAB = { name="Helios Gloves", augments={'"Mag.Atk.Bns."+24','"Drain" and "Aspir" potency +10'}}
    gear.helios.legs = {}
    gear.helios.legs.MAB = { name="Helios Spats", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Magic crit. hit rate +5','Magic burst mdg.+6%',}}
    gear.helios.legs.macc = { name="Helios Spats", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Magic crit. hit rate +5','Magic burst mdg.+6%',}}
    gear.helios.feet = {}
    gear.helios.feet.MAB = { name="Helios Boots", augments={'"Mag.Atk.Bns."+24','Magic crit. hit rate +7'}}

    gear.telchine = {}
    gear.telchine.head = { name="Telchine Cap" }
    gear.telchine.body = { name="Telchine Chas." }
    gear.telchine.body.cure_cast = { name="Telchine Chas.", augments={'"Cure" spellcasting time -5%'}}
    gear.telchine.hands = { name="Telchine Gloves" }
    gear.telchine.hands.cure_potency = { name="Telchine Gloves", augments={'"Cure" potency +3%'}}
    gear.telchine.legs = { name="Telchine Braconi" }
    gear.telchine.feet = { name="Telchine Pigaches" }
    gear.telchine.feet.cure_cast = { name="Telchine Pigaches", augments={'"Cure" spellcasting time -6%'}}

    -- Escha pieces

    gear.vanya = {}
    gear.vanya.body = { name="Vanya Robe" }
    gear.vanya.body.C = { name="Vanya Robe", augments={ 'MND+10', 'Spell interruption rate down 15%', '"Conserve MP"+6' }}
    gear.vanya.feet = {}
    gear.vanya.feet.D = { name="Vanya Clogs", augments={'"Cure" potency +5%', '"Cure" spellcasting time -15%', '"Conserve MP"+6'}}

    -- 119 Abjuration pieces

    gear.souveran = {}
    gear.souveran.body = { name="Souveran Cuirass" }
    gear.souveran.body.A = { name="Souveran Cuirass", augments={"Accuracy+10", "Attack+10", "Enmity+4"}}
    gear.souveran.hands = { name="Souveran Handschuhs" }
    gear.souveran.hands.A = { name="Souveran Handschuhs", augments={"Accuracy+10", "Attack+10", "Enmity+4"}}
    gear.souveran.legs = { name="Souveran Diechlings" }
    gear.souveran.legs.D = { name="Souveran Diechlings", augments={'STR+10','VIT+10','Accuracy+15'}}
    gear.souveran.feet = { name="Souveran Schuhs" }
    gear.souveran.feet.D = { name="Souveran Schuhs", augments={"HP+50", "Attack+20", "magic dmg. taken -3%"}}

    gear.carmine = {}
    gear.carmine.legs = { name="Carmine Cuisses +1"}
    gear.carmine.legs.D = { name="Carmine Cuisses +1", augments={ 'Accuracy+20', 'Attack+12', '"Dual Wield"+6'}}

    gear.lustratio = {}
    gear.lustratio.head = { name="Lustratio Cap" }
    gear.lustratio.head.A = { name="Lustratio Cap", augments={"Attack+15", "STR+5", '"Dbl.Atk.+2"'} }
    gear.lustratio.hands = { name="Lustratio Mittens" }
    gear.lustratio.hands.A = { name="Lustratio Mittens", augments={"Attack+15", "STR+5", '"Dbl.Atk.+2"'} }
    gear.lustratio.feet = { name="Lustratio Leggings" }
    gear.lustratio.feet.D = { name="Lustratio Leggings", augments={"HP+50", "STR+10", "DEX+10"}}

    gear.argosy = {}
    gear.argosy.head = { name="Argosy Celata" }
    gear.argosy.head.A = { name="Argosy Celata", augments={'STR+10', 'DEX+10', 'Attack+15'} }
    gear.argosy.body = { name="Argosy Hauberk" }
    gear.argosy.body.A = { name="Argosy Hauberk", augments={'STR+10', 'DEX+10', 'Attack+15'} }
    gear.argosy.hands = { name="Argosy Mufflers" }
    gear.argosy.hands.A = { name="Argosy Mufflers", augments={'STR+10', 'DEX+10', 'Attack+15'} }
    gear.argosy.legs = { name="Argosy Breeches" }
    gear.argosy.legs.A = { name="Argosy Breeches", augments={'STR+10', 'DEX+10', 'Attack+15'} }
    gear.argosy.feet = { name="Argosy Sollerets" }
    gear.argosy.feet.A = { name="Argosy Sollerets", augments={'STR+10', 'DEX+10', 'Attack+15'} }

    -- Reisenjima pieces

    gear.odyssean = {}
    gear.odyssean.hands = { name="Odyssean Gauntlets" }
    gear.odyssean.hands.idle = { name="Odyssean Gauntlets", augments={'Accuracy+13 Attack+13','Phys. dmg. taken -4%','DEX+10','Attack+3'} }
    gear.odyssean.hands.tp = { name="Odyssean Gauntlets", augments={'Accuracy+13 Attack+13','Phys. dmg. taken -4%','DEX+10','Attack+3'} }
    gear.odyssean.hands.ws = { name="Odyssean Gauntlets", augments={'Accuracy+13 Attack+13','Phys. dmg. taken -4%','DEX+10','Attack+3'} }
    gear.odyssean.legs = { name="Odyssean Cuisses" }
    gear.odyssean.legs.highacc = { name="Odyssean Cuisses", augments={'Weapon skill damage +4%','Pet: STR+3','Chance of successful block +2','Accuracy+19 Attack+19',}}
    gear.odyssean.legs.tp = { name="Odyssean Cuisses", augments={'Weapon skill damage +4%','Pet: STR+3','Chance of successful block +2','Accuracy+19 Attack+19',}}
    gear.odyssean.legs.ws = { name="Odyssean Cuisses", augments={'Weapon skill damage +4%','Pet: STR+3','Chance of successful block +2','Accuracy+19 Attack+19',}}
    gear.odyssean.legs.dt = { name="Odyssean Cuisses", augments={'Accuracy+1','"Resist Silence"+7','Damage taken-5%','Accuracy+10 Attack+10','Mag. Acc.+16 "Mag.Atk.Bns."+16',}}

    gear.herculean = {}
    gear.herculean.head = { name="Herculean Helm" }
    gear.herculean.head.tp = { name="Herculean Helm", augments={'Accuracy+28','"Triple Atk."+2','AGI+2','Attack+5',}}
    gear.herculean.head.ws = { name="Herculean Helm", augments={'Accuracy+28','"Triple Atk."+2','AGI+2','Attack+5',}}
    gear.herculean.legs = { name="Herculean Trousers" }
    gear.herculean.legs.tp = { name="Herculean Trousers", augments={'Accuracy+20','"Triple Atk."+3','Attack+4',}}
    gear.herculean.legs.ws = { name="Herculean Trousers", augments={'Accuracy+20','"Triple Atk."+3','Attack+4',}}
    gear.herculean.feet = { name="Herculean Boots" }
    gear.herculean.feet.tp = { name="Herculean Boots", augments={'Accuracy+16 Attack+16','"Triple Atk."+3','Accuracy+14',}}
    gear.herculean.feet.ws = { name="Herculean Boots", augments={'Accuracy+16 Attack+16','"Triple Atk."+3','Accuracy+14',}}

    gear.merlinic = {}
    gear.merlinic.head = { name="Merlinic Hood"}
    gear.merlinic.head.MAB = { name="Merlinic Hood", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+4','CHR+1','Mag. Acc.+11','"Mag.Atk.Bns."+12'}}
    gear.merlinic.head.MAcc = { name="Merlinic Hood", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+4','CHR+1','Mag. Acc.+11','"Mag.Atk.Bns."+12'}}
    gear.merlinic.head.dt = { name="Merlinic Hood", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+4','CHR+1','Mag. Acc.+11','"Mag.Atk.Bns."+12'}}
    gear.merlinic.head.fc = { name="Merlinic Hood", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+4','CHR+1','Mag. Acc.+11','"Mag.Atk.Bns."+12'}}
    gear.merlinic.legs = { name="Merlinic Shalwar"}
    gear.merlinic.legs.MAB = { name="Merlinic Shalwar", augments={'Mag. Acc.+10','Magic Damage +15','INT+9','"Mag.Atk.Bns."+13',}}
    gear.merlinic.legs.MAcc = { name="Merlinic Shalwar", augments={'Mag. Acc.+10','Magic Damage +15','INT+9','"Mag.Atk.Bns."+13',}}
    gear.merlinic.legs.MB = { name="Merlinic Shalwar", augments={'Mag. Acc.+10','Magic Damage +15','INT+9','"Mag.Atk.Bns."+13',}}
    gear.merlinic.legs.MDmg = { name="Merlinic Shalwar", augments={'Mag. Acc.+10','Magic Damage +15','INT+9','"Mag.Atk.Bns."+13',}}
    gear.merlinic.legs.dt = { name="Merlinic Shalwar", augments={'Mag. Acc.+10','Magic Damage +15','INT+9','"Mag.Atk.Bns."+13',}}
    gear.merlinic.feet = { name="Merlinic Crackows" }
    gear.merlinic.feet.FC = { name="Merlinic Crackows", augments={'Mag. Acc.+15','"Fast Cast"+6','"Mag.Atk.Bns."+13'}}
    gear.merlinic.feet.MAB = { name="Merlinic Crackows", augments={'Mag. Acc.+15','"Fast Cast"+6','"Mag.Atk.Bns."+13'}}
    gear.merlinic.feet.MAcc = { name="Merlinic Crackows", augments={'Mag. Acc.+15','"Fast Cast"+6','"Mag.Atk.Bns."+13'}}
    gear.merlinic.feet.dt = { name="Merlinic Crackows", augments={'Mag. Acc.+15','"Fast Cast"+6','"Mag.Atk.Bns."+13'}}

    -- SR

    gear.founder = {}
    gear.founder.body = { name="Founder's Breastplate" }
    gear.founder.hands = { name="Founder's Gauntlets" }

    -- Weapons
    gear.weapons = {}
    gear.weapons.mage = {}
    gear.weapons.BLM = {}
    gear.weapons.SCH = {}
    gear.weapons.BLM.Nuke = { name="Keraunos", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+3','INT+9 MND+9'}}
    gear.weapons.SCH.Nuke = { name="Keraunos", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+3','INT+9 MND+9'}}
    gear.weapons.mage.macc = { name="Lehbrailg +2" }
    gear.weapons.mage.refresh = { name="Contemplator" }
    gear.weapons.mage.dt_grip = { name="Umbra Strap" }
    gear.weapons.mage.nuke_grip = { name="Zuuxowu Grip" }

    gear.weapons.BLU = {
        sword_right= { name="Claidheamh Soluis", augments={'Accuracy+9','"Dbl.Atk."+2','STR+15 DEX+15'} },
        sword_left = { name="Claidheamh Soluis", augments={'Accuracy+10','"Store TP"+5','STR+14 DEX+14'} },
        club_right = { name="Gabaxorea", augments={'MP+26','"Mag.Atk.Bns."+9','INT+6'} },
        club_left = { name="Gabaxorea", augments={'MP+22','"Mag.Atk.Bns."+8','INT+5'} }
    }

    -- JSE pieces (AF/Relic/Emp)
    -- Feels like duplication, but this is mostly just so I have one place to update
    -- all of the reforged gear (which usually ends up filling the same roles for things
    -- like JA augmentation, etc)
    gear.jse = {}
    gear.jse.artifact = {}
    gear.jse.relic = {}
    gear.jse.empyrean = {}

    -- WAR
    gear.jse.artifact.war = {
        head="Fighter's Mask",
        body="Fighter's Lorica",
        hands="Fighter's Mufflers",
        legs="Fighter's Cuisses",
        feet="Ftr. Calligae +1"
    }
    gear.jse.relic.war = {
        head="War. Mask +2",
        body="Warrior's Lorica",
        hands="War. Mufflers +2",
        legs="Warrior's Cuisses",
        feet="Warrior's Calligae"
    }
    gear.jse.empyrean.war = {
        head="Ravager's Mask +2",
        body="Rvg. Lorica +2",
        hands="Rvg. Mufflers +2",
        legs="Rvg. Cuisses +2",
        feet="Rvg. Calligae +2"
    }

    -- RDM
    gear.jse.artifact.rdm = {
        head="Atrophy Chapeau +1",
        body="Wlk. Tabard +1",
        hands="Wlk. Gloves +1",
        legs="Atrophy Tights",
        feet="Wlk. Boots +1"
    }
    gear.jse.relic.rdm = {
        head="Vitivation Chapeau",
        body="Vitivation Tabard",
        hands="Vitivation Gloves",
        legs="Vitivation Tights",
        feet="Vitivation Boots"
    }
    gear.jse.empyrean.rdm = {
        head="Estq. Chappel +2",
        body="Estq. Sayon +2",
        hands="Estq. Ganthrt. +2",
        legs="Estqr. Fuseau +2",
        feet="Estq. Houseaux +2"
    }

    -- PLD
    gear.jse.artifact.pld = {
        head="Rev. Coronet +1",
        body="Rev. Surcoat +1",
        hands="Rev. Gauntlets +1",
        legs="Rev. Breeches +1",
        feet="Rev. Leggings +1"
    }
    gear.jse.relic.pld = {
        head="Cab. Coronet",
        body="Cab. Surcoat +1",
        hands="Cab. Gauntlets +1",
        legs="Cab. Breeches +1",
        feet="Cab. Leggings"
    }
    gear.jse.empyrean.pld = {
        head="Chevalier's Armet",
        body="Chev. Cuirass",
        hands="Chev. Guantlets",
        legs="Chev. Cuisses",
        feet="Chev. Sabatons +1"
    }

    -- GEO
    gear.jse.artifact.geo = {
        head="Geomancy Galero",
        body="Geo. Tunic +1",
        hands="Geomancy Mitaines",
        legs="Geomancy Pants",
        feet="Geomancy Sandals +1",
    }

    -- Ambuscade gear
    -- Slotted this way so after my lazy ass gets the +1 I don't have to change things
    -- Named after the salvage pieces because it's the only way I can remember it
    gear.ambuscade = {}
    gear.ambuscade.ares = {
        head="Sulevia's Mask +1",
        body="Sulevia's Platemail +1",
        hands="Sulevia's Gauntlets +1",
        legs="Sulevia's Cuisses +1",
        feet="Sulevia's Leggings +1",
    }

    gear.ambuscade.skadi = {
        head="Meghanada Visor",
        body="Meghanada Cuirie",
        hands="Meghanada Gloves",
        legs="Meghanada Chausses",
        feet="Meghanada Jambeaux",
    }

    gear.ambuscade.usukane = {
        head="",
        body="",
        hands="",
        legs="",
        feet="",
    }

    gear.ambuscade.marduk = {
        head="",
        body="",
        hands="",
        legs="",
        feet="",
    }

    gear.ambuscade.morrigan = {
        head="Jhakri Coronal",
        body="Jhakri Robe",
        hands="Jhakri Cuffs",
        legs="Jhakri Slops",
        feet="Jhakri Pigaches",
    }

    -- Things I always have on me, no matter what
    gear.universal = {
        warp_ring="Warp Ring",
        defending_ring=gear.ring.dt_left,
        vocane_ring=gear.ring.dt_right,
        sheltered_ring=gear.ring.regen_left,
        paguroidea_ring=gear.ring.regen_right,
        nexus_cape="Nexus Cape",
        adoulin_refuge="Adoulin's Refuge +1",
        cp_mantle="Aptitude Mantle +1",
        craftkeeper_ring="Craftkeeper's Ring",
        craftmaster_ring="Craftmaster's Ring",
        artificers_ring="Artificer's Ring",
        echad_ring="Echad Ring",
        trizek_ring="Trizek Ring"
    }




end
