-- DRG
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

	sets.idle = {
        ammo=gear.ammo.dt,
		head=gear.ambuscade.ares.head,
		neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.acro.body.tp,
        hands=gear.ambuscade.ares.hands,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back="Shadow Mantle",
        waist=gear.waist.pdt,
        legs=gear.carmine.legs.D,
        feet=gear.souveran.feet.D
    }
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        neck=gear.neck.regen,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right,
    })
    sets.idle.DT = set_combine(sets.idle, {
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.combat = {
        ammo="Thew Bomblet",
        head="Yaoyotl Helm",
        neck=gear.neck.tp,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.acro.body.tp,
        hands=gear.acro.hands.tp,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Atheling Mantle",
        waist="Cetl Belt",
        legs=gear.taeon.legs.tp,
        feet=gear.acro.feet.tp
    }

	sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {})


    -- WS sets

    sets.WS = {
        ammo="Thew Bomblet",
        head="Yaoyotl Helm",
        neck="Fotia Gorget",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body=gear.acro.body.tp,
        hands=gear.acro.hands.tp,
        ring1="Rajas Ring",
        ring2="Pyrosoul Ring",
        back="Atheling Mantle",
        waist="Fotia Belt",
        legs=gear.taeon.legs.tp,
        feet="Whirlpool Greaves"
	}

    sets.JumpBase = {
        ammo="Thew Bomblet",
        head="Yaoyotl Helm",
        neck="Asperity Necklace",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body=gear.acro.body.tp,
        hands=gear.acro.hands.tp,
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back="Atheling Mantle",
        waist="Wanion Belt",
        legs=gear.taeon.legs.tp,
        feet="Whirlpool Greaves"
    }

    sets.JA['Jump'] = set_combine(sets.JumpBase, {})
    sets.JA['High Jump'] = set_combine(sets.JumpBase, {})
    sets.JA['Spirit Jump'] = set_combine(sets.JumpBase, { legs="Lncr. Cuissots +2", feet="Lncr. Schynbld. +2" })
    sets.JA['Soul Jump'] = set_combine(sets.JumpBase, { legs="Lncr. Cuissots +2" })

    sets.JA['Spirit Link'] = { hands="Lancer's Vambraces" }
    sets.JA['Angon'] = { hands="Wyrm Finger Gauntlets +2" }

    send_command('input /macro book 15;wait .1;input /macro set 1')
end