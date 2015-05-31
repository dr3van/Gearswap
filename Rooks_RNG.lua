-- RNG
-- Sets
function get_sets()
    include('Rooks-Include.lua')
    init_get_sets(0)

	sets.idle = {
		head="Oce. Headpiece +1",
		neck="Wiglen Gorget",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body="Shned. Tabard +1",
        hands="Shned. Gloves +1",
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Shadow Mantle",
        waist="Flume Belt +1",
        legs="Blood Cuisses",
        feet="Shned. Boots +1"
	}
    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.combat = {
        head="Whirlpool Mask",
        neck="Ziel Charm",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body="Shned. Tabard +1",
        hands="Shned. Gloves +1",
        ring1="Rajas Ring",
        ring2="Epona's Ring",
        back="Letalis Mantle",
        waist="Hurch'lan Sash",
        legs="Manibozho Brais",
        feet="Manibozho Boots"
    }
    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    sets.ranged = {
        head="Sylvan Gapette +2",
        neck="Ocachi Gorget",
        ear1="Auster's Pearl",
        ear2="Clearview Earring",
        body="Amini Caban",
        hands="Manibozho Gloves",
        ring1="Rajas Ring",
        ring2="Pyrosoul Ring",
        back="Sylvan Chlamys",
        waist="Elanid Belt",
        legs="Nahtirah Trousers",
        feet="Shned. Boots +1"
    }

    sets.ranged.lowacc = set_combine(sets.ranged, {})
    sets.ranged.midacc = set_combine(sets.ranged, {})
    sets.ranged.highacc = set_combine(sets.ranged, {
        head="Whirlpool Mask",
        ring1="Hajduk Ring",
        ring2="Hajduk Ring",
        back="Jaeger Mantle"
    })


    -- WS sets

    sets.WS = {
        head="Whirlpool Mask",
        neck="Fotia Gorget",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body="Shned. Tabard +1",
        hands="Shned. Gloves +1",
        ring1="Rajas Ring",
        ring2="Epona's Ring",
        back="Atheling Mantle",
        waist="Fotia Belt",
        legs="Shned. Tights +1",
        feet="Shned. Boots +1"
	}

    sets.WS['Coronach'] = {
        head="Whirlpool Mask",
        neck="Fotia Gorget",
        ear1="Jupiter's Pearl",
        ear2="Clearview Earring",
        body="Shned. Tabard +1",
        hands="Shned. Gloves +1",
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back="Sylvan Chlamys",
        waist="Fotia Belt",
        legs="Nahtirah Trousers",
        feet="Shned. Boots +1"
    }
    sets.WS['Coronach']['lowacc'] = set_combine(sets.WS['Coronach'], {})
    sets.WS['Coronach']['midacc'] = set_combine(sets.WS['Coronach'], {})
    sets.WS['Coronach']['highacc'] = set_combine(sets.WS['Coronach'], {
        ear1="Auster's Pearl",
        body="Amini Caban",
        hands="Manibozho Gloves",
        ring1="Hajduk Ring",
        ring2="Hajduk Ring"
    })

    send_command('input /macro book 17;wait .1;input /macro set 1')
end