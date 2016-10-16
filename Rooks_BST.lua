-- BST
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

	sets.idle = {
        ammo=gear.ammo.dt,
        head=gear.ambuscade.skadi.head,
        neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.ambuscade.skadi.body,
        hands=gear.ambuscade.skadi.hands,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back="Shadow Mantle",
        waist=gear.waist.pdt,
        legs=gear.ambuscade.skadi.legs,
        feet=gear.ambuscade.skadi.feet
	}
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {})
    sets.idle.DT = set_combine(sets.idle, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.JA = {}

    sets.precast = {}
    sets.precast.FC = {}

    sets.midcast = {}

    sets.combat = {
        ammo="Hagneia Stone",
        head="Yaoyotl Helm",
        neck=gear.neck.acc,
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body=gear.acro.body.tp,
        hands=gear.acro.hands.tp,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Atheling Mantle",
        waist="Cetl Belt",
        legs=gear.acro.legs.tp,
        feet="Whirlpool Greaves"
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
        ear1="Brutal Earring",
        ear2="Moonshade Earring",
        body=gear.acro.body.tp,
        hands=gear.acro.hands.tp,
        ring1="Rajas Ring",
        ring2="Ifrit Ring",
        back="Atheling Mantle",
        waist="Fotia Belt",
        legs=gear.acro.legs.tp,
        feet="Whirlpool Greaves"
    }

    send_command('input /macro book 1;wait .1;input /macro set 1')
end