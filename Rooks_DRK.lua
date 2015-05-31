-- DRK 
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1)

	sets.idle = {
        ammo="Iron Gobbet",
		head="Twilight Helm",
		neck="Wiglen Gorget",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body="Twilight Mail",
        hands="Melaco Mittens",
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Shadow Mantle",
        waist="Flume Belt",
        legs="Blood Cuisses",
        feet="Phorcys Schuhs"
	}


    sets.combat = {
        ammo="Hagneia Stone",
        head="Yaoyotl Helm",
        neck="Portus Collar",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body=gear.acro.body.tp,
        hands="Bale Gauntlets +2",
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Atheling Mantle",
        waist="Zoran's Belt",
        legs="Acro Breeches",
        feet="Whirlpool Greaves"
    }

	sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = {
        ammo="Fracas Grenade",
        head="Yaoyotl Helm",
        neck="Fotia Gorget",
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body=gear.acro.body.tp,
        hands="Acro Gauntlets",
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back="Atheling Mantle",
        waist="Fotia Belt",
        legs="Acro Breeches",
        feet="Acro Leggings"
	}

    send_command('input /macro book 1;wait .1;input /macro set 1')
end