-- DNC
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    sets.idle = {
        ammo="Iron Gobbet",
        head="Whirlpool Mask",
        neck=gear.neck.regen,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body="Shned. Tabard +1",
        hands=gear.taeon.hands.tp,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right,
        back="Shadow Mantle",
        waist=gear.waist.pdt,
        legs="Espial Hose",
        feet=gear.taeon.feet.tp
    }
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
        ammo="Honed Tathlum",
        head="Whirlpool Mask",
        neck=gear.neck.tp,
        ear1=gear.ears.dw_left,
        ear2=gear.ears.dw_right,
        body="Shned. Tabard +1",
        hands=gear.taeon.hands.tp,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Atheling Mantle",
        waist="Windbuffet Belt +1",
        legs="Espial Hose",
        feet=gear.taeon.feet.tp
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {})
    
    -- WS sets
    sets.WS = {
        ammo="Honed Tathlum",
        head="Whirlpool Mask",
        neck=gear.neck.ws,
        ear1="Brutal Earring",
        ear2=gear.ears.ws,
        body="Shned. Tabard +1",
        hands=gear.taeon.hands.tp,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Atheling Mantle",
        waist=gear.waist.ws,
        legs="Espial Hose",
        feet=gear.taeon.feet.tp
    }

    send_command('input /macro book 1;wait .1;input /macro set 1')
end