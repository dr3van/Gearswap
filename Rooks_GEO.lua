-- GEO
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0, 1)

    sets.idle = {
        head=gear.head.mage_refresh,
        neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.body.mage_idle,
        hands=gear.jse.relic.geo.hands,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back=gear.back.mage_idle,
        waist=gear.waist.mage_idle,
        legs=gear.legs.mage_pdt,
        feet=gear.jse.artifact.geo.feet
    }

    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        neck=gear.neck.regen,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right
    })
    sets.idle.DT = set_combine(sets.idle, {
        head=gear.ambuscade.morrigan.head,
        hands=gear.ambuscade.morrigan.hands,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        legs=gear.merlinic.legs.MB
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle.regen, {})

    sets.JA = {}
    sets.JA['Life Cycle'] = {
        body=gear.jse.artifact.geo.body
    }

    sets.precast = {}
    sets.precast.FC = {
        head=gear.merlinic.head.fc,
        ear2=gear.ears.fc_right,
        body=gear.body.mage_fc,
        hands=gear.hands.mage_fc,
        ring1=gear.ring.fc_left,
        ring2=gear.ring.fc_right,
        back=gear.back.fc,
        waist=gear.waist.fc,
        legs="Orvail Pants +1",
        feet="Chelona Boots +1"
    }

    sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {
    })
    sets.precast.FC['Geomancy'] = set_combine(sets.precast.FC, {
    })

    sets.midcast['Elemental Magic'] = set_combine(sets.magic_accuracy, {
        head=gear.merlinic.head.MAB,
        neck=gear.neck.macc,
        ear1=gear.ears.mab_left,
        ear2=gear.ears.mab_right,
        body=gear.ambuscade.morrigan.body,
        hands=gear.ambuscade.morrigan.hands,
        ring1="Shiva Ring",
        ring2="Shiva Ring",
        back="Toro Cape",
        waist=gear.waist.macc,
        legs=gear.merlinic.legs.MAB,
        feet=gear.merlinic.feet.MAB
    })
    sets.midcast['Elemental Magic']['highacc'] = set_combine(sets.midcast['Elemental Magic'], {
        head=gear.ambuscade.morrigan.head,
        neck=gear.neck.macc,
        ear1=gear.ears.mab_left,
        ear2=gear.ears.mab_right,
        body=gear.ambuscade.morrigan.body,
        hands=gear.ambuscade.morrigan.hands,
        ring1="Shiva Ring",
        ring2="Shiva Ring",
        back="Toro Cape",
        waist=gear.waist.macc,
        legs=gear.ambuscade.morrigan.legs,
        feet=gear.ambuscade.morrigan.feet
    })

    sets.midcast['Elemental Magic']['burst'] = set_combine(sets.midcast['Elemental Magic'], {
        hands = gear.merlinic.hands.burst,
        ring1 = gear.ring.mb_left,
        ring2 = gear.ring.mb_right
    })



    sets.midcast['Geomancy'] = {
        head=gear.jse.empyrean.geo.head,
        body=gear.jse.relic.geo.body,
        hands=gear.jse.artifact.geo.hands,
        back="Lifestream Cape",
        waist=gear.waist.conserve_mp
    }

    sets.midcast['Dark Magic'] = set_combine(sets.midcast['Elemental Magic'], {
        body=gear.jse.artifact.geo.body
    })

    sets.midcast['Stun'] = set_combine(sets.midcast['Dark Magic'], {
        head=gear.merlinic.head.Macc,
        neck=gear.neck.macc,
        ear1=gear.ears.macc_left,
        ear2=gear.ears.macc_right,
        back=gear.back.macc,
        waist=gear.waist.macc
    })

    sets.combat = {
        head=gear.ambuscade.morrigan.head,
        neck=gear.neck.tp,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.ambuscade.morrigan.body,
        hands=gear.ambuscade.morrigan.hands,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Rancorous Mantle",
        waist="Goading Belt",
        legs=gear.ambuscade.morrigan.legs,
        feet=gear.ambuscade.morrigan.feet
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = {
        head=gear.ambuscade.morrigan.head,
        neck=gear.neck.ws,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.ambuscade.morrigan.body,
        hands=gear.ambuscade.morrigan.hands,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Rancorous Mantle",
        waist=gear.waist.ws,
        legs=gear.ambuscade.morrigan.legs,
        feet=gear.ambuscade.morrigan.feet
    }

    send_command('input /macro book 16;wait .1;input /macro set 1')
end