function init_gear()
    gear = {}

    -- You don't have to use this, but I find it super useful for
    -- augmented gear that I use across multiple jobs.

    -- All jobs pieces
    gear.neck = {}
    gear.neck.cure_potency = { name="Phalaina Locket" }
    gear.neck.dt = { name="Twilight Torque" }
    gear.neck.enmity = { name="Invidia Torque" }
    gear.neck.idle = { name="Wiglen Gorget" }
    gear.neck.mab = { name="Eddy Necklace" }
    gear.neck.macc = { name="Eddy Necklace" }
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
    gear.ring.dt_left = { name="Defending Ring" }
    gear.ring.dt_right = { name="Vocane Ring" }
    gear.ring.regen_left = { name="Sheltered Ring" }
    gear.ring.regen_right = { name="Paguroidea Ring" }
    gear.ring.FC_left = { name="Lebeche Ring" }
    gear.ring.macc = { name="Sangoma Ring" }

    gear.waist = {}
    gear.waist.hp = { name="Ocean Sash" }
    gear.waist.ws = { name="Fotia Belt" }
    gear.waist.obi = { name="Hachirin-no-obi" }
    gear.waist.fc = { name="Witful Belt" }
    gear.waist.macc = { name="Porous Rope" }
    gear.waist.pdt = { name="Flume Belt +1" }
    gear.waist.conserve_mp = { name="Austerity Belt" }
    gear.waist.highacc = { name="Anguinus Belt" }
    gear.waist.nohaste = { name="Windbuffet Belt +1" }

    gear.back = {}
    gear.back.conserve_mp = { name="Solemnity Cape" }
    gear.back.cure_potency = { name="Solemnity Cape" }
    gear.back.divine = { name="Altruistic Cape" }
    gear.back.dt = { name="Solemnity Cape" }
    gear.back.macc = { name="Refraction Cape" }


    -- JSE Capes
    gear.jsecapes = {}
    gear.jsecapes.blu = { name="Cornflower Cape", augments={'MP+27', 'DEX+1', 'Accuracy+5', 'Blue magic skill +10'}}
    gear.jsecapes.pld = { name="Weard Mantle", augments={'DEX+1', 'VIT+2', 'Enmity+4', '"Phalanx"+5'}}

    -- Skirmish pieces
    gear.hagondes = {}
    gear.hagondes.body = { name="Hagondes Coat +1" }
    gear.hagondes.body.pdt = { name="Hagondes Coat +1", augments={'Phys. dmg. taken -3%'}}

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
    gear.taeon.head = {}
    gear.taeon.head.tp = { name="Taeon Chapeau", augments={'Accuracy+15 Attack+15', 'Triple Atk.+2', 'Weapon skill damage +1%'}}
    gear.taeon.body = {}
    gear.taeon.body.tp = { name="Taeon Tabard", augments={'STR+3 DEX+3', 'Accuracy+19 Attack+19', '"Dual Wield"+5'}}
    gear.taeon.hands = { name="Taeon Gloves"}
    gear.taeon.hands.tp = { name="Taeon Gloves", augments={'DEX+10', 'Accuracy+18 Attack+18', '"Dual Wield"+4'}}
    gear.taeon.legs = {}
    gear.taeon.feet = { name="Taeon Boots"}
    gear.taeon.legs.tp = { name="Taeon Tights", augments={'Accuracy+20 Attack+20','"Triple Atk."+2','Crit. hit damage +3%' }}
    gear.taeon.feet.tp = { name="Taeon Boots", augments={'Accuracy+19 Attack+19', '"Dual Wield"+5'}}

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
    gear.vanya.feet = {}
    gear.vanya.feet.D = { name="Vanya Clogs", augments={'"Cure" potency +5%', '"Cure" spellcasting time -15%', '"Conserve MP"+6'}}

    -- 119 Abjuration pieces

    gear.souveran = {}
    gear.souveran.hands = { name="Souveran Handschuhs" }
    gear.souveran.hands.A = { name="Souveran Handschuhs", augments={"Accuracy+10", "Attack+10", "Enmity+4"}}
    gear.souveran.legs = { name="Souveran Diechlings" }
    gear.souveran.legs.D = { name="Souveran Diechlings", augments={'STR+8','VIT+8','Accuracy+12'}}
    gear.souveran.feet = { name="Souveran Schuhs" }
    gear.souveran.feet.D = { name="Souveran Schuhs", augments={"HP+46", "Attack+18", "magic dmg. taken -2%"}}

    gear.lustratio = {}
    gear.lustratio.head = { name="Lustratio Cap" }
    gear.lustratio.head.A = { name="Lustratio Cap", augments={"Attack+13", "STR+3", '"Dbl.Atk.+1"'} }
    gear.lustratio.feet = { name="Lustratio Leggings" }
    gear.lustratio.feet.D = { name="Lustratio Leggings", augments={"HP+49", "STR+9", "DEX+9"}}

    -- Reisenjima pieces

    gear.odysseean = {}
    gear.odysseean.legs = {}
    gear.odysseean.legs.highacc = { name="Odyssean Cuisses", augments={'Accuracy+18 Attack+18','"Dbl.Atk."+1','STR+3','Accuracy+14',}}
    gear.odysseean.legs.ws = { name="Odyssean Cuisses", augments={'Accuracy+9','STR+3','Weapon skill damage +6%',}}
    gear.odysseean.legs.dt = { name="Odyssean Cuisses", augments={'Accuracy+1','"Resist Silence"+7','Damage taken-5%','Accuracy+10 Attack+10','Mag. Acc.+16 "Mag.Atk.Bns."+16',}}

    gear.herculean = {}
    gear.herculean.feet = {}
    gear.herculean.feet.tp = { name="Herculean Boots", augments={'Accuracy+16 Attack+16','"Triple Atk."+3','Accuracy+14',}}

    -- Weapons
    gear.weapons = {}
    gear.weapons.mage = {}
    gear.weapons.BLM = {}
    gear.weapons.BLM.Nuke = { name="Keraunos", augments={'"Mag.Atk.Bns."+17','"Fast Cast"+3','INT+9 MND+9'}}
    gear.weapons.mage.macc = { name="Lehbrailg +2" }
    gear.weapons.mage.refresh = { name="Contemplator" }

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

    -- PLD
    gear.jse.artifact.pld = {
        head="Rev. Coronet +1",
        body="Glt. Surcoat +1",
        hands="",
        legs="Rev. Breeches",
        feet="Glt. Leggings +1"
    }
    gear.jse.relic.pld = {
        head="Cab. Coronet",
        body="Cab. Surcoat +1",
        hands="Cab. Gauntlets",
        legs="Cab. Breeches +1",
        feet="Cab. Leggings"
    }
    gear.jse.empyrean.pld = {
        head="Chevalier's Armet",
        body="Chev. Cuirass",
        hands="Chev. Guantlets",
        legs="Chev. Cuisses",
        feet="Chev. Sabatons"
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
