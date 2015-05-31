-- THF
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1)

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
        feet="Skadi's Jambeaux"
    }

    sets.combat = {
        ammo="Jukukik Feather",
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

    sets.combat.TH = set_combine(sets.highacc, {
        hands="Asn. Armlets +2",
        feet="Raid. Poulaines +2"
    })

    sets.JA = {}
    sets.JA['Box Step'] = set_combine(sets.combat.TH, {})


    -- WS sets

    sets.WS = {
        ammo="Jukukik Feather",
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

    send_command('input /macro book 6;wait .1;input /macro set 3')
end