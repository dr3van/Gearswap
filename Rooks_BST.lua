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
        feet="Skadi's Jambeaux"
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
        ammo=gear.ammo.haste,
        head=gear.taeon.head.tp,
        neck=gear.neck.tp,
        ear1=gear.ears.melee_acc_left,
        ear2=gear.ears.melee_acc_right,
        body=gear.ambuscade.skadi.body,
        hands=gear.taeon.hands.tp,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Letalis Mantle",
        waist=gear.waist.nohaste,
        legs=gear.ambuscade.skadi.legs,
        feet=gear.valorous.feet.tp
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {})


    -- WS sets

    sets.WS = {
        ammo=gear.ammo.haste,
        head=gear.argosy.head.A,
        neck=gear.neck.ws,
        ear1=gear.ears.melee_left,
        ear2=gear.ears.melee_right,
        body=gear.argosy.body.A,
        hands=gear.argosy.hands.A,
        ring1="Rajas Ring",
        ring2="Ifrit Ring +1",
        back="Letalis Mantle",
        waist=gear.waist.ws,
        legs=gear.ambuscade.skadi.legs,
        feet=gear.argosy.feet.A
    }

    send_command('input /macro book 1;wait .1;input /macro set 1')
end