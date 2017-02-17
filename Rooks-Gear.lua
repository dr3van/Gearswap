function init_gear()
    gear = {}

    -- You don't have to use this, but I find it super useful for
    -- augmented gear that I use across multiple jobs.

    -- JSE stuff got unwieldy so it's in a separate file
    include('Rooks-Gear-JSE.lua')
    init_jse()

    -- All jobs pieces
    gear.ammo = {}
    gear.ammo.dt = { name="Staunch Tathlum" }
    gear.ammo.enmity = { name="Iron Gobbet" }
    gear.ammo.haste = { name="Hasty Pinion +1" }
    gear.ammo.fc = { name = "Impatiens" }
    gear.ammo.macc = { name = "Plumose Sachet" }
    gear.ammo.mdmg = { name = "Dosis Tathlum" }
    gear.ammo.refresh = { name = "Homiliary" }

    gear.neck = {}
    gear.neck.hp = { name="Dualism Collar +1" }
    gear.neck.cure_potency = { name="Phalaina Locket" }
    gear.neck.dt = { name="Twilight Torque" }
    gear.neck.idle = { name="Twilight Torque" }
    gear.neck.enmity = { name="Invidia Torque" }
    gear.neck.regen = { name="Wiglen Gorget" }
    gear.neck.mab = { name="Sanctity Necklace" }
    gear.neck.macc = { name="Sanctity Necklace" }
    gear.neck.magic_skill = { name="Incanter's Torque" }
    gear.neck.acc = { name="Sanctity Necklace" }
    gear.neck.regen = { name="Wiglen Gorget" }
    gear.neck.tp = { name="Sanctity Necklace" }
    gear.neck.stp = { name="Lissome Necklace" }
    gear.neck.ws = { name="Fotia Gorget" }
    gear.neck.sword = { name="Decimus Torque" }
    gear.neck.greataxe = { name="Decimus Torque" }

    gear.ears = {}
    gear.ears.acc_left = { name="Dignitary's Earring" }
    gear.ears.da = { name="Brutal Earring" }
    gear.ears.da_left = { name="Bladeborn Earring" }
    gear.ears.da_right = { name="Steelflash Earring" }
    gear.ears.dw_left = { name="Dudgeon Earring" }
    gear.ears.dw_right = { name="Heartseeker Earring" }
    gear.ears.fc_right = { name="Loquac. Earring" }
    gear.ears.idle_left = { name="Hearty Earring" }
    gear.ears.idle_right = { name="Ethereal Earring" }
    gear.ears.macc_mnd = { name="Lifestorm Earring" }
    gear.ears.macc_int = { name="Psystorm Earring" }
    gear.ears.macc_left = { name="Dignitary's Earring" }
    gear.ears.macc_right = { name="Gwati Earring" }
    gear.ears.ws = { name="Moonshade Earring" }
    gear.ears.wsd = { name="Ishvara Earring" }
    gear.ears.mab_left = { name="Friomisi Earring" }
    gear.ears.mab_right = { name="Hecate's Earring" }
    gear.ears.enmity_right = { name="Friomisi Earring" }
    gear.ears.conserve_mp = { mame="Calamitous Earring" }
    gear.ears.melee_left = { name="Mache Earring" }
    gear.ears.melee_acc_left = { name="Mache Earring" }
    gear.ears.melee_right = { name="Mache Earring" }
    gear.ears.melee_acc_right = { name="Mache Earring" }

    gear.ring = {}
    gear.ring.cure_potency = { name="Lebeche Ring" }
    gear.ring.dt_left = { name="Defending Ring" }
    gear.ring.dt_right = { name="Vocane Ring" }
    gear.ring.regen_left = { name="Sheltered Ring" }
    gear.ring.regen_right = { name="Paguroidea Ring" }
    gear.ring.fc_left = { name="Lebeche Ring" }
    gear.ring.fc_right = { name="Veneficium Ring" }
    gear.ring.macc_left = { name="Stikini Ring" }
    gear.ring.macc_right = { name="Stikini Ring" }
    gear.ring.magic_skill_left = { name="Stikini Ring" }
    gear.ring.magic_skill_right = { name="Stikini Ring" }
    gear.ring.healing_left = { name="Sirona's Ring" }
    gear.ring.healing_right = { name="Ephedra Ring" }
    gear.ring.enmity_left = { name="Eihwaz Ring" }
    gear.ring.enmity_right = { name="Provocare Ring" }
    gear.ring.drain_aspir = { name="Evanescence Ring" }
    gear.ring.mb_left = { name="Mujin Band" }
    gear.ring.mb_right = { name="Locus Ring" }
    gear.ring.racc = { name="Hajduk Ring" }

    gear.waist = {}
    gear.waist.hp = { name="Ocean Sash" }
    gear.waist.ws = { name="Fotia Belt" }
    gear.waist.obi = { name="Hachirin-no-obi" }
    gear.waist.fc = { name="Witful Belt" }
    gear.waist.macc = { name="Porous Rope" }
    gear.waist.mab = { name="Eschan Stone" }
    gear.waist.mage_idle = { name="Fucho-no-obi" }
    gear.waist.pdt = { name="Flume Belt +1" }
    gear.waist.conserve_mp = { name="Austerity Belt +1" }
    gear.waist.hmp = { name="Austerity Belt +1" }
    gear.waist.highacc = { name="Eschan Stone" }
    gear.waist.racc = { name="Eschan Stone" }
    gear.waist.nohaste = { name="Windbuffet Belt +1" }
    gear.waist.highhaste = { name="Pya'ekue Belt +1" }
    gear.waist.drain_aspir = { name="Austerity Belt +1" }

    gear.back = {}
    gear.back.conserve_mp = { name="Solemnity Cape" }
    gear.back.cure_potency = { name="Solemnity Cape" }
    gear.back.divine = { name="Altruistic Cape" }
    gear.back.dt = { name="Solemnity Cape" }
    gear.back.mage_idle = { name="Umbra Cape" }
    gear.back.macc = { name="Refraction Cape" }
    gear.back.fc = { name="Swith Cape" }

    gear.grip = {}
    gear.grip.macc = { name="Mephitis Grip" }
    gear.grip.enhancing = { name="Fulcio Grip" }
    gear.grip.dt = { name="Umbra Strap" }
    gear.grip.nuke = { name="Zuuxowu Grip" }

    -- Random all jobs visible pieces
    gear.head = {}
    gear.head.dark_magic = { name="Pixie Hairpin +1" }
    gear.head.mage_refresh = { name="Befouled Crown" }
    gear.body = {}
    gear.body.mage_cure_potency = { name="Vrikodara Jupon" }
    gear.body.mage_fc = { name="Vrikodara Jupon" }
    gear.body.mage_idle = { name="Vrikodara Jupon" }
    gear.hands = {}
    gear.hands.mage_fc = { name="Repartie Gloves" }
    gear.hands.melee_fc = { name="Leyline Gloves", augments={'Accuracy+12', 'Mag. Acc.+14', '"Mag. Atk. Bns."+15', '"Fast Cast"+2'} }
    gear.hands.melee_MAB = { name="Leyline Gloves", augments={'Accuracy+12', 'Mag. Acc.+14', '"Mag. Atk. Bns."+15', '"Fast Cast"+2'} }
    gear.hands.melee_macc = { name="Leyline Gloves", augments={'Accuracy+12', 'Mag. Acc.+14', '"Mag. Atk. Bns."+15', '"Fast Cast"+2'} }
    gear.legs = {}
    gear.legs.mage_pdt = { name="Miasmic Pants" }
    gear.feet = {}



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
    gear.yorium.feet = { name="Yorium Sabatons" }

    gear.acro = {}
    gear.acro.body = { name="Acro Surcoat" }
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
    gear.vanya.body.C = { name="Vanya Robe", augments={ 'MND+10', 'Spell interruption rate down +15%', '"Conserve MP"+6' }}
    gear.vanya.feet = {}
    gear.vanya.feet.D = { name="Vanya Clogs", augments={'"Cure" potency +5%', '"Cure" spellcasting time -15%', '"Conserve MP"+6'}}

    gear.eschite = {}
    gear.eschite.head = { name="Eschite Helm" }
    gear.eschite.head.D = { name="Eschite Helm", augments={'STR+10','VIT+7','"Cure" potency +7%'} }
    gear.eschite.legs = { name="Eschite Cuisses" }
    gear.eschite.legs.D = { name="Eschite Cuisses", augments={'"Mag.Atk.Bns."+25','"Conserve MP"+6','"Fast Cast"+5'} }
    gear.eschite.feet = { name="Eschite Greaves" }
    gear.eschite.feet.A = { name="Eschite Greaves", augments={'HP+80', 'Enmity+7', 'Phys. dmg. taken -4%'} }

    gear.psycloth = {}
    gear.psycloth.legs = { name="Psycloth Lappas" }
    gear.psycloth.legs.D = { name="Psycloth Lappas" }


    -- 119 Abjuration pieces

    gear.adhemar = {}
    gear.adhemar.body = { name="Adhemar Jacket" }

    gear.souveran = {}
    gear.souveran.head = { name="Souveran Schaller" }
    gear.souveran.head.C = { name="Souveran Schaller" }
    gear.souveran.body = { name="Souveran Cuirass" }
    gear.souveran.body.A = { name="Souveran Cuirass", augments={"Accuracy+10", "Attack+10", "Enmity+4"}}
    gear.souveran.body.C = { name="Souveran Cuirass", augments={'HP+80','Enmity+7','Potency of "Cure" effect received+10%'}}
    gear.souveran.hands = { name="Souveran Handschuhs" }
    gear.souveran.hands.A = { name="Souveran Handschuhs", augments={"Accuracy+10", "Attack+10", "Enmity+4"}}
    gear.souveran.hands.C = { name="Souveran Handschuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received+10%'}}
    gear.souveran.legs = { name="Souveran Diechlings" }
    gear.souveran.legs.C = { name="Souveran Diechlings", augments={'HP+80','Enmity+7','Potency of "Cure" effect received+10%'}}
    gear.souveran.legs.D = { name="Souveran Diechlings", augments={'STR+10','VIT+10','Accuracy+15'}}
    gear.souveran.feet = { name="Souveran Schuhs" }
    gear.souveran.feet.C = { name="Souveran Schuhs", augments={'HP+80','Enmity+7','Potency of "Cure" effect received+10%'}}
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
    gear.argosy.legs.D = { name="Argosy Breeches", augments={'STR+10', 'Attack+20', '"Store TP"+5'} }
    gear.argosy.feet = { name="Argosy Sollerets" }
    gear.argosy.feet.A = { name="Argosy Sollerets", augments={'STR+10', 'DEX+10', 'Attack+15'} }

    -- Reisenjima pieces

    gear.odyssean = {}
    gear.odyssean.head = { name="Odyssean Helm" }
    gear.odyssean.head.tp = { name="Odyssean Helm", augments={'Accuracy+10','"Store TP"+7','VIT+11',} }
    gear.odyssean.head.ws = { name="Odyssean Helm", augments={'"Subtle Blow"+4','Mag. Acc.+10 "Mag.Atk.Bns."+10','Weapon skill damage +7%'} }
    gear.odyssean.hands = { name="Odyssean Gauntlets" }
    gear.odyssean.hands.idle = { name="Odyssean Gauntlets", augments={'Accuracy+15 Attack+15','STR+4','Accuracy+13','Attack+14'} }
    gear.odyssean.hands.tp = { name="Odyssean Gauntlets", augments={'Accuracy+15 Attack+15','STR+4','Accuracy+13','Attack+14'} }
    gear.odyssean.hands.ws = { name="Odyssean Gauntlets", augments={'Accuracy+15 Attack+15','STR+4','Accuracy+13','Attack+14'} }
    gear.odyssean.legs = { name="Odyssean Cuisses" }
    gear.odyssean.legs.tp = { name="Odyssean Cuisses", augments={'DEX+5','Accuracy+8','Quadruple Attack +2','Accuracy+16 Attack+16','Mag. Acc.+19 "Mag.Atk.Bns."+19',}}
    gear.odyssean.legs.ws = { name="Odyssean Cuisses", augments={'DEX+5','Accuracy+8','Quadruple Attack +2','Accuracy+16 Attack+16','Mag. Acc.+19 "Mag.Atk.Bns."+19',}}
    gear.odyssean.legs.dt = { name="Odyssean Cuisses", augments={'DEX+5','Accuracy+8','Quadruple Attack +2','Accuracy+16 Attack+16','Mag. Acc.+19 "Mag.Atk.Bns."+19',}}
    gear.odyssean.feet = { name="Odyssean Greaves" }
    gear.odyssean.feet.tp = { name="Odyssean Greaves", augments={'Accuracy+23 Attack+23','DEX+7','Accuracy+15',}}
    gear.odyssean.feet.fc = { name="Odyssean Greaves", augments={'Accuracy+23 Attack+23','DEX+7','Accuracy+15',}}

    gear.herculean = {}
    gear.herculean.head = { name="Herculean Helm" }
    gear.herculean.head.tp = { name="Herculean Helm", augments={'Accuracy+28','"Triple Atk."+2','AGI+2','Attack+5',}}
    gear.herculean.head.ws = { name="Herculean Helm", augments={'Accuracy+28','"Triple Atk."+2','AGI+2','Attack+5',}}
    gear.herculean.head.fc = { name="Herculean Helm", augments={'Accuracy+28','"Triple Atk."+2','AGI+2','Attack+5',}}
    gear.herculean.head.mab = { name="Herculean Helm", augments={'Accuracy+28','"Triple Atk."+2','AGI+2','Attack+5',}}
    gear.herculean.head.dt = { name="Herculean Helm", augments={'Accuracy+28','"Triple Atk."+2','AGI+2','Attack+5',}}
    gear.herculean.hands = { name="Herculean Gloves" }
    gear.herculean.hands.tp = { name="Herculean Gloves", augments={'Accuracy+25 Attack+25','"Triple Atk."+2','DEX+6','Accuracy+13','Attack+2'} }
    gear.herculean.hands.ws = { name="Herculean Gloves", augments={'Accuracy+25 Attack+25','"Triple Atk."+2','DEX+6','Accuracy+13','Attack+2'} }
    gear.herculean.legs = { name="Herculean Trousers" }
    gear.herculean.legs.ranged = { name="Herculean Trousers", augments={'Rng.Acc.+16 Rng.Atk.+16','"Subtle Blow"+8','AGI+11','Rng.Acc.+14','Rng.Atk.+8'}}
    gear.herculean.legs.mab = { name="Herculean Trousers", augments={'Mag. Acc.+6 "Mag.Atk.Bns."+6','DEX+5','Quadruple Attack +3','Accuracy+13 Attack+13'} }
    gear.herculean.legs.tp = { name="Herculean Trousers", augments={'Mag. Acc.+6 "Mag.Atk.Bns."+6','DEX+5','Quadruple Attack +3','Accuracy+13 Attack+13'} }
    gear.herculean.legs.ws = { name="Herculean Trousers", augments={'Mag. Acc.+6 "Mag.Atk.Bns."+6','DEX+5','Quadruple Attack +3','Accuracy+13 Attack+13'} }
    gear.herculean.feet = { name="Herculean Boots" }
    gear.herculean.feet.ranged = { name="Herculean Boots", augments={'Rng.Acc.+30','Phys. dmg. taken -2%','STR+14','Rng.Atk.+14'}}
    gear.herculean.feet.tp = { name="Herculean Boots", augments={'Accuracy+16 Attack+16','"Triple Atk."+3','Accuracy+14',}}
    gear.herculean.feet.ws = { name="Herculean Boots", augments={'Accuracy+16 Attack+16','"Triple Atk."+3','Accuracy+14',}}
    gear.herculean.feet.mab = { name="Herculean Boots", augments={'Accuracy+16 Attack+16','"Triple Atk."+3','Accuracy+14',}}

    gear.merlinic = {}
    gear.merlinic.head = { name="Merlinic Hood"}
    gear.merlinic.head.MAB = { name="Merlinic Hood", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+4','CHR+1','Mag. Acc.+11','"Mag.Atk.Bns."+12'}}
    gear.merlinic.head.MAcc = { name="Merlinic Hood", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+4','CHR+1','Mag. Acc.+11','"Mag.Atk.Bns."+12'}}
    gear.merlinic.head.dt = { name="Merlinic Hood", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+4','CHR+1','Mag. Acc.+11','"Mag.Atk.Bns."+12'}}
    gear.merlinic.head.fc = { name="Merlinic Hood", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','"Fast Cast"+4','CHR+1','Mag. Acc.+11','"Mag.Atk.Bns."+12'}}
    gear.merlinic.hands = { name="Merlinic Dastanas" }
    gear.merlinic.hands.burst = { name="Merlinic Dastanas", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','Magic burst mdg.+10%','Mag. Acc.+5','"Mag.Atk.Bns."+5',}}
    gear.merlinic.hands.MAB = { name="Merlinic Dastanas", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','Magic burst mdg.+10%','Mag. Acc.+5','"Mag.Atk.Bns."+5',}}
    gear.merlinic.hands.MAcc = { name="Merlinic Dastanas", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','Magic burst mdg.+10%','Mag. Acc.+5','"Mag.Atk.Bns."+5',}}
    gear.merlinic.hands.dt = { name="Merlinic Dastanas", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','Magic burst mdg.+10%','Mag. Acc.+5','"Mag.Atk.Bns."+5',}}
    gear.merlinic.legs = { name="Merlinic Shalwar"}
    gear.merlinic.legs.MAB = { name="Merlinic Shalwar", augments={'Mag. Acc.+29','Magic burst mdg.+9%','MND+9','"Mag.Atk.Bns."+7' }}
    gear.merlinic.legs.MAcc = { name="Merlinic Shalwar", augments={'Mag. Acc.+29','Magic burst mdg.+9%','MND+9','"Mag.Atk.Bns."+7' }}
    gear.merlinic.legs.MB = { name="Merlinic Shalwar", augments={'Mag. Acc.+29','Magic burst mdg.+9%','MND+9','"Mag.Atk.Bns."+7' }}
    gear.merlinic.legs.MDmg = { name="Merlinic Shalwar", augments={'Mag. Acc.+29','Magic burst mdg.+9%','MND+9','"Mag.Atk.Bns."+7' }}
    gear.merlinic.legs.dt = { name="Merlinic Shalwar", augments={'Mag. Acc.+29','Magic burst mdg.+9%','MND+9','"Mag.Atk.Bns."+7' }}
    gear.merlinic.feet = { name="Merlinic Crackows" }
    gear.merlinic.feet.MAB = { name="Merlinic Crackows", augments={'Magic burst mdg.+11%','Mag. Acc.+12','"Mag.Atk.Bns."+15'}}
    gear.merlinic.feet.MAcc = { name="Merlinic Crackows", augments={'Magic burst mdg.+11%','Mag. Acc.+12','"Mag.Atk.Bns."+15'}}
    gear.merlinic.feet.fc = { name="Merlinic Crackows", augments={'Magic burst mdg.+11%','Mag. Acc.+12','"Mag.Atk.Bns."+15'}}
    gear.merlinic.feet.dt = { name="Merlinic Crackows", augments={'Magic burst mdg.+11%','Mag. Acc.+12','"Mag.Atk.Bns."+15'}}

    gear.valorous = {}
    gear.valorous.head = { name="Valorous Mask" }
    gear.valorous.head.tp = { name="Valorous Mask", augments={'Accuracy+18 Attack+18','Weapon skill damage +4%','Accuracy+7','Attack+5',}}
    gear.valorous.head.ws = { name="Valorous Mask", augments={'Accuracy+18 Attack+18','Weapon skill damage +4%','Accuracy+7','Attack+5',}}
    gear.valorous.hands = { name="Valorous Mitts" }
    gear.valorous.legs = { name="Valorous Hose" }
    gear.valorous.legs.wsd = { name="Valorous Hose", augments={'STR+4', 'Accuracy+6', 'Attack+15', 'Weapon skill damage +2%'}}
    gear.valorous.feet = { name="Valorous Greaves" }
    gear.valorous.feet.dt = { name="Valorous Greaves", augments={'Accuracy+23','Phys. dmg. taken -1%','DEX+9','Attack+6'}}
    gear.valorous.feet.tp = { name="Valorous Greaves", augments={'Accuracy+23','Phys. dmg. taken -1%','DEX+9','Attack+6'}}
    gear.valorous.feet.ws = { name="Valorous Greaves", augments={'Accuracy+23','Phys. dmg. taken -1%','DEX+9','Attack+6'}}

    -- SR

    gear.founder = {}
    gear.founder.head = { name="Founder's Corona" }
    gear.founder.body = { name="Founder's Breastplate" }
    gear.founder.hands = { name="Founder's Gauntlets" }
    gear.founder.legs = { name="Founder's Hose" }
    gear.founder.feet = { name="Founder's Greaves" }

    -- Weapons
    gear.weapons = {}
    gear.weapons.mage = {}
    gear.weapons.BLM = {}
    gear.weapons.SCH = {}
    gear.weapons.BLM.Nuke = { name="Keraunos", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+3','INT+9 MND+9'}}
    gear.weapons.SCH.Nuke = { name="Keraunos", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+3','INT+9 MND+9'}}
    gear.weapons.mage.macc = { name="Lehbrailg +2" }
    gear.weapons.mage.refresh = { name="Contemplator" }

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
        body="Meghanada Cuirie +1",
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
        head="Jhakri Coronal +1",
        body="Jhakri Robe +1",
        hands="Jhakri Cuffs +1",
        legs="Jhakri Slops +1",
        feet="Jhakri Pigaches +1",
    }

    gear.ambuscade.phorcys = {
        head="Flam. Zucchetto +1",
        body="Flamma Korazin +1",
        hands="Flam. Manopolas +1",
        legs="Flamma Dirs +1",
        feet="Flam. Gambieras +1",
    }

    gear.ambuscade.thaumas = {
        head="Mummu Bonnet +1",
        body="Mummu Jacket +1",
        hands="Mummu Wrists +1",
        legs="Mummu Kecks +1",
        feet="Mummu Gamashes +1",
    }

    gear.ambuscade.nashira = {
        head="Tali'ah Turban +1",
        body="Tali'ah Manteel",
        hands="Tali'ah Gages +1",
        legs="Tali'ah Seraweels +1",
        feet="Tali'ah Crackows +1",
    }

    gear.ambuscade.homam = {
        head="Ayanmo Zucchetto +1",
        body="Ayanmo Corazza +1",
        hands="Ayanmo Manopolas +1",
        legs="Ayanmo Cosciales +1",
        feet="Ayanmo Gambieras +1",
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
