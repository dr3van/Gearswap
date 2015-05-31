-- GEO
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0)


	sets.idle = {
        range="Dunna",
		head="Wivre Hairpin",
		neck="Wiglen Gorget",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body="Geo. Tunic +1",
        hands="Bagua Mitaines",
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Umbra Cape",
        waist="Ocean Sash",
        legs="Nares Trews",
        feet="Geomancy Sandals"
	}
    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.JA = {}
    sets.JA['Life Cycle'] = {
        body="Geo. Tunic +1"
    }

	sets.precast = {}
	sets.precast.FC = {
        head="Nahtirah Hat",
        ear2=gear.ears.fc_right,
        hands="Repartie Gloves",
        back="Swith Cape",
        waist=gear.waist.fc.belt,
        legs="Orvail Pants +1",
        feet="Chelona Boots +1"
	}

    sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {
    })
    sets.precast.FC['Geomancy'] = set_combine(sets.precast.FC, {
    })

    sets.midcast['Elemental Magic'] = {
        head=gear.helios.head.MAcc,
        neck=gear.neck.mab,
        ear1=gear.ears.mab_left,
        ear2=gear.ears.mab_right,
        body=gear.helios.body.MAB,
        hands=gear.helios.hands.MAB,
        ring1="Shiva Ring",
        ring2="Shiva Ring",
        back="Searing Cape",
        waist="Wanion Belt",
        legs=gear.helios.legs.MAB,
        feet=gear.helios.feet.MAB
    }

    sets.midcast['Geomancy'] = {
        body="Bagua Tunic",
        hands="Geomancy Mitaines",
        back="Vita Cape",
        waist="Austerity Belt"
    }

    sets.midcast['Dark Magic'] = {
        body="Geomancy Tunic +1"
    }

	sets.resting = set_combine(sets.idle, {
        head="Wivre Hairpin",
        neck="Eidolon Pendant",
        ear1="Relaxing Earring",
        body="Chelona Blazer",
        back="Vita Cape",
        waist="Austerity Belt",
        legs="Nisse Slacks",
        feet="Chelona Boots +1"
    })

    sets.combat = {
        head="Nahtirah Hat",
        neck="Asperity Necklace",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body="Espial Gambison",
        hands="Espial Bracers",
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Rancorous Mantle",
        waist="Cetl Belt",
        legs="Espial Hose",
        feet="Espial Socks"
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = {
        head="Nahtirah Hat",
        neck="Fotia Gorget",
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body="Weather. Robe +1",
        hands="Espial Bracers",
        ring1="Rajas ring",
        ring2="Pyrosoul Ring",
        back="Rancorous Mantle",
        waist="Fotia Belt",
        legs="Espial Hose",
        feet="Espial Socks"
	}

    send_command('input /macro book 16;wait .1;input /macro set 1')
end