-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1)

    sets.idle = {
        ammo="Iron Gobbet",
        head="Wivre Hairpin",
        neck="Wiglen Gorget",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body=gear.hagondes.body,
        hands=gear.taeon.hands.tp,
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Umbra Cape",
        waist="Flume Belt +1",
        legs="Blood Cuisses",
        feet=gear.taeon.feet.tp
    }
    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = {
        head="Wivre Hairpin",
        neck="Eidolon Pendant",
        ear1="Relaxing Earring",
        body="Chelona Blazer",
        back="Vita Cape",
        waist="Austerity Belt",
        legs="Nisse Slacks",
        feet="Chelona Boots +1"
    }

    sets.precast.FC = {
        ear1="Loquac. Earring",
        body="Mavi Mintan +2",
        hands="Thaumas Gloves",
        back="Swith Cape",
        waist="Witful Belt",
        legs="Orvail Pants +1",
        feet="Chelona Boots +1"
    }

    sets.combat = {
        ammo="Honed Tathlum",
        head=gear.taeon.head.tp,
        neck="Asperity Necklace",
        ear1="Brutal Earring",
        ear2="Suppanomimi",
        body=gear.taeon.body.tp,
        hands=gear.taeon.hands.tp,
        ring1="Rajas Ring",
        ring2="Epona's Ring",
        back="Atheling Mantle",
        waist="Windbuffet Belt +1",
        legs=gear.taeon.legs.tp,
        feet=gear.taeon.feet.tp
    }
    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = {
        ammo="Honed Tathlum",
        head=gear.taeon.head.tp,
        neck="Fotia Gorget",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body=gear.taeon.body.tp,
        hands=gear.taeon.hands.tp,
        ring1="Rajas Ring",
        ring2="Epona's Ring",
        back="Atheling Mantle",
        waist="Fotia Belt",
        legs=gear.taeon.legs.tp,
        feet=gear.taeon.feet.tp
    }

    sets.WS.Requiescat = set_combine(sets.WS, {
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        ring1="Aquasoul Ring",
        legs="Nahtirah Trousers"
    })

    sets.WS['Chant du Cygne'] = set_combine(sets.WS, {
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        back="Rancorous Mantle",
        legs="Mavi Tayt +2"
    })

    sets.WS['Savage Blade'] = set_combine(sets.WS, {
        ear1="Brutal Earring",
        ear2="Moonshade Earring"
    })

    sets.WS['Realmrazer'] = set_combine(sets.WS, {
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        ring1="Aquasoul Ring",
        legs="Nahtirah Trousers"
    })


    -- Magic sets. Lots of them!

    sets.blue = {
        ammo="Mavi Tathlum",
        head="Mirage Keffiyeh",
        body="Assim. Jubbah +1",
        back=gear.jsecapes.blu,
        legs="Mavi Tayt +2",
        feet="Mirage Charuqs +2"
    }

    sets.blue.curing = set_combine(sets.blue, {
        neck="Phalaina Locket",
        hands=gear.telchine.hands.cure_potency,
        back="Oretan. Cape +1"
    })

    sets.blue.buffs = set_combine(sets.blue, {
    })

    sets.blue.debuffs = set_combine(sets.blue, {
    })

    sets.blue.breath = set_combine(sets.blue, {
    })

    sets.blue.physical = set_combine(sets.blue, {
        head="Whirlpool Mask",
        neck="Eddy Necklace",
        ear1="Lifestorm Earring",
        ear2="Psystorm Earring",
        hands=gear.taeon.hands.tp,
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back="Buquwik Cape",
        waist="Wanion Belt",
        feet=gear.taeon.feet.tp
    })

    sets.blue.physical.STR = set_combine(sets.blue.physical, {
    })
    sets.blue.physical.DEX = set_combine(sets.blue.physical, {
    })
    sets.blue.physical.VIT = set_combine(sets.blue.physical, {
    })
    sets.blue.physical.AGI = set_combine(sets.blue.physical, {
    })
    sets.blue.physical.CHR = set_combine(sets.blue.physical, {
    })

    sets.blue.physical.STRDEX = set_combine(sets.blue.physical, {
    })
    sets.blue.physical.STRVIT = set_combine(sets.blue.physical, {
    })
    sets.blue.physical.STRAGI = set_combine(sets.blue.physical, {
    })
    sets.blue.physical.STRMND = set_combine(sets.blue.physical, {
    })

    sets.blue.physical.DEXINT = set_combine(sets.blue.physical, {
    })


    sets.blue.magical = set_combine(sets.blue, {
        ammo="Dosis Tathlum",
        head=gear.helios.head.MAcc,
        neck="Eddy Necklace",
        ear1="Novio Earring",
        ear2="Hecate's Earring",
        body=gear.helios.body.MAB,
        hands=gear.helios.hands.MAB,
        ring1="Shiva Ring",
        ring2="Shiva Ring",
        waist="Wanion Belt",
        legs=gear.helios.legs.MAB,
        feet=gear.helios.feet.MAB
    })

    sets.blue.magical.STR = set_combine(sets.blue.magical, {
    })
    sets.blue.magical.DEX = set_combine(sets.blue.magical, {
    })
    sets.blue.magical.VIT = set_combine(sets.blue.magical, {
    })
    sets.blue.magical.INT = set_combine(sets.blue.magical, {
    })
    sets.blue.magical.MND = set_combine(sets.blue.magical, {
    })
    sets.blue.magical.CHR = set_combine(sets.blue.magical, {
    })

    sets.blue.magical.STRDEX = set_combine(sets.blue.magical, {
    })
    sets.blue.magical.INTMND = set_combine(sets.blue.magical, {
    })

    set_mapping = {
        ["sets.blue"] = sets.blue,

        ["sets.blue.physical"] = sets.blue.physical,
        ["sets.blue.physical.STR"] = sets.blue.physical.STR,
        ["sets.blue.physical.DEX"] = sets.blue.physical.DEX,
        ["sets.blue.physical.VIT"] = sets.blue.physical.VIT,
        ["sets.blue.physical.AGI"] = sets.blue.physical.AGI,
        ["sets.blue.physical.CHR"] = sets.blue.physical.CHR,
        ["sets.blue.physical.STRDEX"] = sets.blue.physical.STRDEX,
        ["sets.blue.physical.STRVIT"] = sets.blue.physical.STRVIT,
        ["sets.blue.physical.STRAGI"] = sets.blue.physical.STRAGI,
        ["sets.blue.physical.STRMND"] = sets.blue.physical.STRMND,
        ["sets.blue.physical.DEXINT"] = sets.blue.physical.DEXINT,

        ["sets.blue.magical"] = sets.blue.magical,
        ["sets.blue.magical.STR"] = sets.blue.magical.STR,
        ["sets.blue.magical.DEX"] = sets.blue.magical.DEX,
        ["sets.blue.magical.VIT"] = sets.blue.magical.VIT,
        ["sets.blue.magical.INT"] = sets.blue.magical.INT,
        ["sets.blue.magical.MND"] = sets.blue.magical.MND,
        ["sets.blue.magical.CHR"] = sets.blue.magical.CHR,
        ["sets.blue.magical.STRDEX"] = sets.blue.magical.STRDEX,
        ["sets.blue.magical.INTMND"] = sets.blue.magical.INTMND
    }


    spell_mapping = {
        ["Healing Breeze"] = "sets.blue.curing",
        ["Exuviation"] = "sets.blue.curing",
        ["Magic Fruit"] = "sets.blue.curing",
        ["Plenilune Embrace"] = "sets.blue.curing",
        ["Pollen"] = "sets.blue.curing",
        ["White Wind"] = "sets.blue.curing",
        ["Wild Carrot"] = "sets.blue.curing",

        ["Animating Wail"] = "sets.blue.buffs",
        ["Amplification"] = "sets.blue.buffs",
        ["Barrier Tusk"] = "sets.blue.buffs",
        ["Battery Charge"] = "sets.blue.buffs",
        ["Cocoon"] = "sets.blue.buffs",
        ["Diamondhide"] = "sets.blue.buffs",
        ["Fantod"] = "sets.blue.buffs",
        ["Feather Barrier"] = "sets.blue.buffs",
        ["Magic Barrier"] = "sets.blue.buffs",
        ["Memento Mori"] = "sets.blue.buffs",
        ["Metallic Body"] = "sets.blue.buffs",
        ["Occultation"] = "sets.blue.buffs",
        ["Orcish Counterstance"] = "sets.blue.buffs",
        ["Reactor Cool"] = "sets.blue.buffs",
        ["Refueling"] = "sets.blue.buffs",
        ["Regeneration"] = "sets.blue.buffs",
        ["Saline Coat"] = "sets.blue.buffs",
        ["Triumphant Roar"] = "sets.blue.buffs",
        ["Warm Up"] = "sets.blue.buffs",
        ["Winds of Promyvion"] = "sets.blue.buffs",
        ["Zephyr Mantle"] = "sets.blue.buffs",

        ["Auroral Drape"] = "sets.blue.debuffs",
        ["Awful Eye"] = "sets.blue.debuffs",
        ["Chaotic Eye"] = "sets.blue.debuffs",
        ["Cimicine Discharge"] = "sets.blue.debuffs",
        ["Cold Wave"] = "sets.blue.debuffs",
        ["Dream Flower"] = "sets.blue.debuffs",
        ["Enervation"] = "sets.blue.debuffs",
        ["Filamented Hold"] = "sets.blue.debuffs",
        ["Frightful Roar"] = "sets.blue.debuffs",
        ["Infrasonics"] = "sets.blue.debuffs",
        ["Light of Penance"] = "sets.blue.debuffs",
        ["Lowing"] = "sets.blue.debuffs",
        ["Mortal Ray"] = "sets.blue.debuffs",
        ["Venom Shell"] = "sets.blue.debuffs",
        ["Sandspray"] = "sets.blue.debuffs",
        ["Sheep Song"] = "sets.blue.debuffs",
        ["Soporific"] = "sets.blue.debuffs",
        ["Yawn"] = "sets.blue.debuffs",
        
        ["Bad Breath"] = "sets.blue.breath",
        ["Frost Breath"] = "sets.blue.breath",
        ["Heat Breath"] = "sets.blue.breath",
        ["Hecatomb Wave"] = "sets.blue.breath",
        ["Flying Hip Press"] = "sets.blue.breath",
        ["Magnetite Cloud"] = "sets.blue.breath",
        ["Poison Breath"] = "sets.blue.breath",
        ["Radiant Breath"] = "sets.blue.breath",
        ["Thunder Breath"] = "sets.blue.breath",
        ["Vapor Spray"] = "sets.blue.breath",
        ["Wind Breath"] = "sets.blue.breath",
        
        ["Amorphic Spikes"] = "sets.blue.physical.DEX",
        ["Asuran Claws"] = "sets.blue.physical.STRDEX",
        ["Barbed Crescent"] = "sets.blue.physical.DEX",
        ["Battle Dance"] = "sets.blue.physical.STR",
        ["Benthic Typhoon"] = "sets.blue.physical.AGI",
        ["Bludgeon"] = "sets.blue.physical.CHR",
        ["Body Slam"] = "sets.blue.physical.VIT",
        ["Cannonball"] = "sets.blue.physical.STRVIT",
        ["Claw Cyclone"] = "sets.blue.physical.DEX",
        ["Death Scissors"] = "sets.blue.physical.STR",
        ["Delta Thrust"] = "sets.blue.physical.STRVIT",
        ["Dimensional Death"] = "sets.blue.physical.STR",
        ["Disseverment"] = "sets.blue.physical.STRDEX",
        ["Empty Thrash"] = "sets.blue.physical.STR",
        ["Feather Storm"] = "sets.blue.physical.AGI",
        ["Final Sting"] = "sets.blue.physical",
        ["Foot Kick"] = "sets.blue.physical.STRDEX",
        ["Frenetic Rip"] = "sets.blue.physical.STRDEX",
        ["Frypan"] = "sets.blue.physical.STRMND",
        ["Goblin Rush"] = "sets.blue.physical.STRDEX",
        ["Grand Slam"] = "sets.blue.physical.VIT",
        ["Head Butt"] = "sets.blue.physical.STRINT",
        ["Heavy Strike"] = "sets.blue.physical.STR",
        ["Helldive"] = "sets.blue.physical.AGI",
        ["Hydro Shot"] = "sets.blue.physical.AGI",
        ["Hysteric Barrage"] = "sets.blue.physical.DEX",
        ["Jet Stream"] = "sets.blue.physical.AGI",
        ["Mandibular Bite"] = "sets.blue.physical.STRINT",
        ["Pinecone Bomb"] = "sets.blue.physical.STRAGI",
        ["Power Attack"] = "sets.blue.physical.VIT",
        ["Quad. Continuum"] = "sets.blue.physical.STRVIT",
        ["Quadrastrike"] = "sets.blue.physical.STR",
        ["Ram Charge"] = "sets.blue.physical.STRMND",
        ["Screwdriver"] = "sets.blue.physical.STRMND",
        ["Seedspray"] = "sets.blue.physical.DEX",
        ["Sickle Slash"] = "sets.blue.physical.DEX",
        ["Smite of Rage"] = "sets.blue.physical.STRDEX",
        ["Spinal Cleave"] = "sets.blue.physical.STR",
        ["Spiral Spin"] = "sets.blue.physical.AGI",
        ["Sprout Smack"] = "sets.blue.physical.VIT",
        ["Sub-zero Smash"] = "sets.blue.physical.VIT",
        ["Sudden Lunge"] = "sets.blue.physical.AGI",
        ["Tail Slap"] = "sets.blue.physical.STRVIT",
        ["Terror Touch"] = "sets.blue.physical.DEXINT",
        ["Whirl of Rage"] = "sets.blue.physical.STRMND",
        ["Wild Oats"] = "sets.blue.physical.AGI",
        ["Uppercut"] = "sets.blue.physical.STR",
        ["Vanity Dive"] = "sets.blue.physical.DEX",
        ["Vertical Cleave"] = "sets.blue.physical.STR",
        
        ["Acrid Stream"] = "sets.blue.magical.MND",
        ["Blastbomb"] = "sets.blue.magical.INT",
        ["Blazing Bound"] = "sets.blue.magical.STR",
        ["Blitztrahl"] = "sets.blue.magical.INTMND",
        ["Bomb Toss"] = "sets.blue.magical.INT",
        ["Charged Whisker"] = "sets.blue.magical.DEX",
        ["Corrosive Ooze"] = "sets.blue.magical.INT",
        ["Cursed Sphere"] = "sets.blue.magical.INT",
        ["Dark Orb"] = "sets.blue.magical.INT",
        ["Death Ray"] = "sets.blue.magical.INT",
        ["Everyone's Grudge"] = "sets.blue.magical.MND",
        ["Eyes On Me"] = "sets.blue.magical.CHR",
        ["Firespit"] = "sets.blue.magical.INT",
        ["Ice Break"] = "sets.blue.magical.INT",
        ["Leafstorm"] = "sets.blue.magical.STR",
        ["Maelstrom"] = "sets.blue.magical.INTMND",
        ["Magic Hammer"] = "sets.blue.magical.MND",
        ["Mind Blast"] = "sets.blue.magical.MND",
        ["Mysterious Light"] = "sets.blue.magical.CHR",
        ["Regurgitation"] = "sets.blue.magical.MND",
        ["Sandspin"] = "sets.blue.magical.INT",
        ["Subduction"] = "sets.blue.magical.INT",
        ["Thermal Pulse"] = "sets.blue.magical.VIT",
        ["Water Bomb"] = "sets.blue.magical.INTMND",
        
        ["Absolute Terror"] = "sets.blue.debuffs",
        ["Bilgestorm"] = "sets.blue.physical",
        ["Bloodrake"] = "sets.blue.physical.STR",
        ["Gates of Hades"] = "sets.blue.magical.STRDEX",
        ["Harden Shell"] = "sets.blue.buffs",
        ["Pyric Bulwark"] = "sets.blue.buffs",
        ["Thunderbolt"] = "sets.blue.magical.INTMND",
        ["Tourbillion"] = "sets.blue.physical.STRMND"
    }

    send_command('input /macro book 11;wait .1;input /macro set 1')
end

-- Mechanics

function job_midcast(spell)
    if spell.skill == 'Blue Magic' then
        equip(set_mapping[spell_mapping[spell.name]])
    else
        base_midcast(spell)
    end
end