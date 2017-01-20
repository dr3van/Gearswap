-- RNG
-- Sets
function get_sets()
    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    sets.idle = {
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
        body=gear.adhemar.body,
        hands=gear.herculean.hands.tp,
        ring1="Rajas Ring",
        ring2="Chirich Ring",
        back="Letalis Mantle",
        waist=gear.waist.nohaste,
        legs=gear.herculean.legs.tp,
        feet=gear.herculean.feet.tp
    }
    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    -- 44% from VS, caban, base jse cape, gifts
    -- 10% from pants
    -- 4% from mani gloves
    sets.snapshot = {
        body="Amini Caban +1",
        hands="Manibozho Gloves",
        back=gear.jse.capes.ambuscade.rng.tp,
        legs="Nahtirah Trousers"
    }

    sets.ranged = {
        head=gear.ambuscade.skadi.head,
        neck="Marked Gorget",
        ear1="Sherida Earring",
        ear2="Enervating Earring",
        body=gear.adhemar.body,
        hands=gear.ambuscade.skadi.hands,
        ring1="Apate Ring",
        ring2="Bellona's Ring",
        back=gear.jse.capes.ambuscade.rng.tp,
        waist=gear.waist.racc,
        legs=gear.ambuscade.skadi.legs,
        feet=gear.herculean.feet.ranged
    }

    sets.ranged.lowacc = set_combine(sets.ranged, {})
    sets.ranged.midacc = set_combine(sets.ranged, {})
    sets.ranged.highacc = set_combine(sets.ranged, {
        ring1=gear.ring.racc,
        ring2=gear.ring.racc
    })


    -- WS sets

    sets.WS = {
        head=gear.ambuscade.skadi.head,
        neck=gear.neck.ws,
        ear1=gear.ears.wsd,
        ear2="Sherida Earring",
        body=gear.adhemar.body,
        hands=gear.ambuscade.skadi.hands,
        ring1="Apate Ring",
        ring2="Garuda Ring",
        back=gear.jse.capes.ambuscade.rng.tp,
        waist=gear.waist.ws,
        legs=gear.ambuscade.skadi.legs,
        feet=gear.herculean.feet.ranged
	}

    sets.WS['Coronach'] = {
        head=gear.ambuscade.skadi.head,
        neck="Marked Gorget",
        ear1=gear.ears.wsd,
        ear2="Sherida Earring",
        body=gear.adhemar.body,
        hands=gear.ambuscade.skadi.hands,
        ring1="Ramuh Ring +1",
        ring2="Ramuh Ring +1",
        back=gear.jse.capes.ambuscade.rng.tp,
        waist="Elanid Belt",
        legs=gear.ambuscade.skadi.legs,
        feet=gear.herculean.feet.ranged
    }

    sets.WS['Wildfire'] = {
        head=gear.ambuscade.skadi.head,
        neck="Sanctity Necklace",
        ear1=gear.ears.wsd,
        ear2="Friomisi Earring",
        body="Samnuha Coat",
        hands="Leyline Gloves",
        ring1="Garuda Ring",
        ring2="Apate Ring",
        back=gear.jse.capes.ambuscade.rng.tp,
        waist="Elanid Belt",
        legs=gear.ambuscade.skadi.legs,
        feet=gear.herculean.feet.ranged
    }


    send_command('input /macro book 17;wait .1;input /macro set 1')
end

function job_midcast(spell)
    if spell.action_type == 'Ranged Attack' and buffactive['Barrage'] then
        equip(sets.midcast['Barrage'])
    else
        base_midcast(spell)
    end
end