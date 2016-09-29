-- RNG
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
        legs=gear.carmine.legs.D,
        feet=gear.ambuscade.skadi.feet
    }
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        neck=gear.neck.regen,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right,
    })
    sets.idle.DT = set_combine(sets.idle, {})
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.combat = {
        head=gear.herculean.head.tp,
        neck=gear.neck.tp,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.taeon.body.tp,
        hands=gear.taeon.hands.tp,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Atheling Mantle",
        waist=gear.waist.nohaste,
        legs=gear.herculean.legs.tp,
        feet=gear.herculean.feet.tp
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

function job_midcast(spell)
    if spell.action_type == 'Ranged Attack' and buffactive['Barrage'] then
        equip(sets.midcast['Barrage'])
    else
        base_midcast(spell)
    end
end