-- SCH
-- Sets

function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0, 1)

    use_obi = 1

    sets.idle = {
        main=gear.weapons.mage.refresh,
        sub=gear.grip.dt,
        ammo=gear.ammo.dt,
        head=gear.head.mage_refresh,
        neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.body.mage_idle,
        hands=gear.ambuscade.morrigan.hands,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back=gear.back.mage_idle,
        waist=gear.waist.mage_idle,
        legs=gear.merlinic.legs.dt,
        feet="Herald's Gaiters"
    }
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        head=gear.head.mage_refresh,
        neck=gear.neck.regen,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right,
        legs="Nares Trews"
    })
    sets.idle.DT = set_combine(sets.idle, {
        head="Nahtirah Hat",
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        legs=gear.merlinic.legs.MAB,
        feet=gear.merlinic.feet.MAB
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle.regen, {
        ear1="Relaxing Earring",
        feet="Chelona Boots +1"
    })

    sets.JA = {}

    sets.precast = {}
    sets.precast.FC = {
        ammo=gear.ammo.fc,
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

    sets.combat = {
        ammo=gear.ammo.haste,
        head=gear.ambuscade.morrigan.head,
        neck=gear.neck.acc,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.ambuscade.morrigan.body,
        hands=gear.ambuscade.morrigan.hands,
        ring1="Rajas ring",
        ring2="K'ayres Ring",
        back="Rancorous Mantle",
        waist="Cetl Belt",
        legs=gear.ambuscade.morrigan.legs,
        feet=gear.ambuscade.morrigan.feet
    }
    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = set_combine(sets.combat, {
        ammo=gear.ammo.haste,
        head=gear.ambuscade.morrigan.head,
        neck=gear.neck.ws,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.ambuscade.morrigan.body,
        hands=gear.ambuscade.morrigan.hands,
        ring1="Rajas ring",
        ring2="K'ayres Ring",
        back="Rancorous Mantle",
        waist=gear.waist.ws,
        legs=gear.ambuscade.morrigan.legs,
        feet=gear.ambuscade.morrigan.feet
    })

    -- Magic sets

    sets.precast.CureSpell = set_combine(sets.precast.FC, {
        body=gear.telchine.body.cure_cast,
        feet=gear.vanya.feet.D
    })
    sets.precast.CuragaSpell = set_combine(sets.precast.CureSpell, {})

    sets.midcast = {}
    sets.midcast.CureSpell = {
--        main="Tamaxchi",
--        sub="Genbu's Shield",
        head="Telchine Cap",
        neck=gear.neck.cure_potency,
        ear2="Lifestorm Earring",
        hands=gear.telchine.hands.cure_potency,
        ring1="Sirona's Ring",
        ring2="Ephedra Ring",
        back="Oretania's Cape +1",
        waist=gear.waist.conserve_mp,
        feet=gear.vanya.feet.D
    }
    sets.midcast.RegenSpell = {
        body=gear.telchine.body.cure_cast
    }

    sets.midcast['Enhancing Magic'] = {
        neck="Colossus's torque",
        body=gear.telchine.body,
        back=gear.back.conserve_mp,
        waist=gear.waist.conserve_mp
    }

    sets.magic_accuracy = {
        main=gear.weapons.mage.macc,
        sub=gear.grip.macc,
        head=gear.merlinic.head.MAcc,
        neck=gear.neck.macc,
        ear1=gear.ears.macc_left,
        ear2=gear.ears.macc_right,
        body=gear.ambuscade.morrigan.body,
        hands=gear.merlinic.hands.MAcc,
        ring1="Shiva Ring",
        ring2="Shiva Ring",
        back=gear.back.macc,
        waist=gear.waist.macc,
        legs=gear.merlinic.legs.MAcc,
        feet=gear.merlinic.feet.MAcc
    }
    sets.midcast['Divine Magic'] = set_combine(sets.magic_accuracy, {})
    sets.midcast['Enfeebling Magic'] = set_combine(sets.magic_accuracy, {})

    -- Specific spells
    sets.midcast['Sneak'] = set_combine(sets.midcast['Enhancing Magic'], {
        back="Skulker's Cape"
    })
    sets.midcast['Invisible'] = set_combine(sets.midcast['Enhancing Magic'], {
        back="Skulker's Cape"
    })

    sets.midcast['Cursna'] = {
        head="Telchine Cap",
        neck="Colossus's torque",
        ear2="Lifestorm Earring",
        ring1="Sirona's Ring",
        ring2="Ephedra Ring",
        back="Oretania's Cape +1",
        waist=gear.waist.conserve_mp,
        feet="Vanya Clogs"
    }

    sets.midcast['Elemental Magic'] = {
        main=gear.weapons.SCH.Nuke,
        sub=gear.grip.nuke,
        ammo=gear.ammo.mdmg,
        head=gear.merlinic.head.MAB,
        neck=gear.neck.macc,
        ear1=gear.ears.mab_left,
        ear2=gear.ears.mab_right,
        body=gear.ambuscade.morrigan.body,
        hands=gear.merlinic.hands.MAB,
        ring1="Shiva Ring",
        ring2="Shiva Ring",
        back="Toro Cape",
        waist=gear.waist.macc,
        legs=gear.merlinic.legs.MAB,
        feet=gear.merlinic.feet.MAB
    }
    sets.midcast['Enfeebling Magic'] = set_combine(sets.magic_accuracy, {})
    sets.midcast['Dark Magic'] = set_combine(sets.magic_accuracy, {
        ring1=gear.ring.drain_aspir,
        waist="Casso Sash",
    })

    sets.midcast.DrainAspir = set_combine(sets.midcast['Dark Magic'], {
        waist=gear.waist.drain_aspir
    })
    sets.midcast['Drain'] = set_combine(sets.midcast.DrainAspir, {})
    sets.midcast['Aspir'] = set_combine(sets.midcast.DrainAspir, {})
    sets.midcast['Aspir II'] = set_combine(sets.midcast.DrainAspir, {})


    send_command('input /macro book 20;wait .1;input /macro set 1')
end