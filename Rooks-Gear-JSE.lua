-- Gear file just for JSE so it's easier for me to keep track of
function init_jse()
    gear.jse = {}

    gear.jse.capes = {}
    gear.jse.capes.ambuscade = {}
    gear.jse.capes.reive = {}

    gear.jse.artifact = {}
    gear.jse.relic = {}
    gear.jse.empyrean = {}

    -- JSE Capes
    gear.jse.capes.reive.blu = { name="Cornflower Cape", augments={'MP+27', 'DEX+1', 'Accuracy+5', 'Blue magic skill +10'}}
    gear.jse.capes.reive.pld = { name="Weard Mantle" }
    gear.jse.capes.reive.drk = { name="Niht Mantle", augments={'Attack+13','Dark magic skill +10','"Drain" and "Aspir" potency +25','Weapon skill damage +4%'}}
    gear.jse.capes.reive.sch = { name="Bookworm's Cape" }
    gear.jse.capes.reive.smn = { name="Conveyance Cape" }

    gear.jse.capes.ambuscade.blu = { name="Rosmerta's Cape"}
    gear.jse.capes.ambuscade.blu.idle = { name="Rosmerta's Cape"}
    gear.jse.capes.ambuscade.blu.tp = { name="Rosmerta's Cape"}
    gear.jse.capes.ambuscade.blu.ws = { name="Rosmerta's Cape"}

    gear.jse.capes.ambuscade.blm = { name="Taranus's Cape"}
    gear.jse.capes.ambuscade.blm.mab = { name="Taranus's Cape"}
    gear.jse.capes.ambuscade.blm.macc = { name="Taranus's Cape"}

    gear.jse.capes.ambuscade.pld = { name="Rudianos's Mantle"}
    gear.jse.capes.ambuscade.pld.fc = { name="Rudianos's Mantle", augments={'"Fast Cast"+10'}}
    gear.jse.capes.ambuscade.pld.tp = { name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10'}}
    gear.jse.capes.ambuscade.pld.ws = { name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10'}}
    gear.jse.capes.ambuscade.pld.idle = { name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10'}}
    gear.jse.capes.ambuscade.pld.wsd = { name="Rudianos's Mantle", augments={'STR+20','Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%'}}
    gear.jse.capes.ambuscade.pld.nuke = { name="Rudianos's Mantle", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +10','"Mag.Atk.Bns."+10'}}

    gear.jse.capes.ambuscade.war = { name="Cichol's Mantle"}
    gear.jse.capes.ambuscade.war.idle = { name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10'}}
    gear.jse.capes.ambuscade.war.tp = { name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10'}}
    gear.jse.capes.ambuscade.war.ws = { name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10'}}
    gear.jse.capes.ambuscade.war.wsd = { name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10', 'Weapon skill damage +10%'}}

    gear.jse.capes.ambuscade.thf = { name="Toutatis's Cape"}
    gear.jse.capes.ambuscade.thf.tp = { name="Toutatis's Cape"}
    gear.jse.capes.ambuscade.thf.ws = { name="Toutatis's Cape"}

    gear.jse.capes.ambuscade.brd = { name="Intarabus's Cape"}
    gear.jse.capes.ambuscade.brd.tp = { name="Intarabus's Cape"}
    gear.jse.capes.ambuscade.brd.ws = { name="Intarabus's Cape"}
    gear.jse.capes.ambuscade.brd.macc = { name="Intarabus's Cape"}
    gear.jse.capes.ambuscade.brd.fc = { name="Intarabus's Cape"}

    gear.jse.capes.ambuscade.drk = { name="Ankou's Mantle"}
    gear.jse.capes.ambuscade.drk.idle = { name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10'}}
    gear.jse.capes.ambuscade.drk.tp = { name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10'}}
    gear.jse.capes.ambuscade.drk.ws = { name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10'}}
    gear.jse.capes.ambuscade.drk.wsd = { name="Ankou's Mantle", augments={'STR+8','VIT+20', 'Accuracy+20 Attack+20', 'Weapon skill damage +10%'}}

    gear.jse.capes.ambuscade.sam = { name="Smertrios's Mantle" }
    gear.jse.capes.ambuscade.sam.tp = { name="Smertrios's Mantle" }
    gear.jse.capes.ambuscade.sam.ws = { name="Smertrios's Mantle" }

    gear.jse.capes.ambuscade.rng = { name="Belenus's Cape" }
    gear.jse.capes.ambuscade.rng.tp = { name="Belenus's Cape" }
    gear.jse.capes.ambuscade.rng.ws = { name="Belenus's Cape" }

    gear.jse.capes.ambuscade.smn = { name="Campestres's Cape" }
    gear.jse.capes.ambuscade.smn.phys_rage = { name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Attack+10 Pet: Rng.Atk.+10'}}
    gear.jse.capes.ambuscade.smn.mag_rage = { name="Campestres's Cape", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Mag. Acc.+3'} }
    gear.jse.capes.ambuscade.smn.tp = { name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Attack+10 Pet: Rng.Atk.+10'}}
    gear.jse.capes.ambuscade.smn.ws = { name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Attack+10 Pet: Rng.Atk.+10'}}


    -- WAR
    gear.jse.artifact.war = {
        head="Pummeler's Mask +2",
        body="Pumm. Lorica +2",
        hands="Pummeler's Mufflers +2",
        legs="Pumm. Cuisses +2",
        feet="Pumm. Calligae +2"
    }
    gear.jse.relic.war = {
        head="Agoge Mask +1",
        body="Agoge Lorica +1",
        hands="Agoge Mufflers +1",
        legs="Warrior's Cuisses +2",
        feet="Agoge Calligae +1"
    }
    gear.jse.empyrean.war = {
        head="Ravager's Mask +2",
        body="Rvg. Lorica +2",
        hands="Rvg. Mufflers +2",
        legs="Rvg. Cuisses +2",
        feet="Boii Calligae +1"
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
        head="Rev. Coronet +2",
        body="Rev. Surcoat +3",
        hands="Rev. Gauntlets +2",
        legs="Rev. Breeches +2",
        feet="Rev. Leggings +2"
    }
    gear.jse.relic.pld = {
        head="Cab. Coronet",
        body="Cab. Surcoat +1",
        hands="Cab. Gauntlets +1",
        legs="Cab. Breeches +1",
        feet="Cab. Leggings"
    }
    gear.jse.empyrean.pld = {
        head="Chev. Armet +1",
        body="Chev. Cuirass +1",
        hands="Chev. Guantlets",
        legs="Chevalier's Cuisses",
        feet="Chev. Sabatons +1"
    }

    -- GEO
    gear.jse.artifact.geo = {
        head="Geomancy Galero",
        body="Geo. Tunic +1",
        hands="Geomancy Mitaines +1",
        legs="Geomancy Pants",
        feet="Geomancy Sandals +1",
    }

    gear.jse.relic.geo = {
        head="Bagua Galero",
        body="Bagua Tunic +1",
        hands="Bagua Mitaines",
        legs="Bagua Pants",
        feet="Bagua Sandals",
    }

    gear.jse.empyrean.geo = {
        head="Azimuth Hood +1",
        body="Azimuth Coat +1",
        hands="Azimuth Gloves",
        legs="Azimuth Tights",
        feet="Azimuth Gaiters",
    }

    -- RUN
    gear.jse.artifact.run = {
        head="Runeist Bandeau",
        body="Runeist Coat",
        hands="Runeist Mitons",
        legs="Runeist Trousers +1",
        feet="Runeist Bottes"
    }

    gear.jse.relic.run = {
        head="Futhark Bandeau +1",
        body="Futhark Coat",
        hands="Futhark Mitons",
        legs="Futhark Trousers",
        feet="Futhark Boots"
    }

    gear.jse.empyrean.run = {
        head="Erilaz Galea",
        body="Erilaz Surcoat",
        hands="Erilaz Gauntlets",
        legs="Erilaz Leg Guards",
        feet="Erilaz Greaves"
    }

    -- BRD
    gear.jse.artifact.brd = {
        head="Brioso Roundlet +2",
        body="Brioso Justaucorps",
        hands="Brioso Cuffs +1",
        legs="Brioso Cannions +1",
        feet="Brioso Slippers +2"
    }

    gear.jse.relic.brd = {
        head="Bihu Roundlet +1",
        body="Bihu Justaucorps",
        hands="Bihu Cuffs +1",
        legs="Bihu Cannions +1",
        feet="Bihu Slippers +1"
    }

    gear.jse.empyrean.brd = {
        head="Fili Calot +1",
        body="Fili Hongreline +1",
        hands="Fili Manchettes +1",
        legs="Fili Rhingrave +1",
        feet="Fili Cothurnes +1",
        neck="Aoidos' Matinee"
    }

    -- SMN
    gear.jse.artifact.smn = {
        head="Convoker's Horn",
        body="Convoker's Doublet",
        hands="Convoker's Bracers",
        legs="Convoker's Spats",
        feet="Convoker's Pigaches"
    }

    gear.jse.relic.smn = {
        head="Glyphic Horn",
        body="Glyphic Doublet",
        hands="Glyphic Bracers +1",
        legs="Glyphic Spats",
        feet="Glyphic Pigaches +1"
    }

    gear.jse.empyrean.smn = {
        head="Beckoner's Horn +1",
        body="Beckoner's Doublet +1",
        hands="Beckoner's Bracers",
        legs="Beckoner's Spats +1",
        feet="Beckoner's Pigaches +1"
    }

    -- XXX
    gear.jse.artifact.xxx = {
        head="",
        body="",
        hands="",
        legs="",
        feet=""
    }

    gear.jse.relic.xxx = {
        head="",
        body="",
        hands="",
        legs="",
        feet=""
    }

    gear.jse.empyrean.xxx = {
        head="",
        body="",
        hands="",
        legs="",
        feet=""
    }


end
