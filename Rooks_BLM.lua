-- BLM
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0, 1)

    use_obi = 1

    sets.idle = {
        main="Lathi",
        sub=gear.grip.nuke,
        ammo=gear.ammo.dt,
        head=gear.head.mage_refresh,
        neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.body.mage_idle,
        hands=gear.merlinic.hands.dt,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back=gear.back.mage_idle,
        waist=gear.waist.mage_idle,
        legs=gear.legs.mage_pdt,
        feet="Herald's Gaiters"
    }
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        head=gear.head.mage_refresh,
        neck=gear.neck.regen,
        body=gear.ambuscade.morrigan.body,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right,
        waist=gear.waist.mage_idle,
        legs="Nares Trews"
    })
    sets.idle.DT = set_combine(sets.idle, {
        head="Nahtirah Hat",
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        legs=gear.legs.mage_pdt,
        feet=gear.merlinic.feet.MAB
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle.regen, {
        ear1="Relaxing Earring",
        feet="Chelona Boots +1"        
    })

    sets.JA = {}

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
        legs=gear.psycloth.legs.D,
        feet="Chelona Boots +1"
    }

    sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {
--        head="Wicce Petasos +1",
    })

    sets.combat = {
        ammo=gear.ammo.haste,
        head=gear.ambuscade.morrigan.head,
        neck=gear.neck.acc,
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body=gear.ambuscade.morrigan.body,
        hands=gear.ambuscade.morrigan.hands,
        ring1="Ramuh ring +1",
        ring2="Chirich Ring",
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

    sets.WS = {
        ammo=gear.ammo.haste,
        neck="Fotia Gorget",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        ring1="Rajas ring",
        ring2="K'ayres Ring",
        back="Rancorous Mantle",
        waist="Fotia Belt"
    }

    sets.magic_accuracy = {
        head=gear.merlinic.head.MAcc,
        neck=gear.neck.macc,
        ear1=gear.ears.macc_mnd,
        ear2=gear.ears.macc_int,
        body=gear.ambuscade.morrigan.body,
        hands=gear.merlinic.hands.MAcc,
        ring1="Shiva Ring",
        ring2="Shiva Ring",
        back=gear.back.macc,
        waist=gear.waist.macc,
        legs=gear.merlinic.legs.MAcc,
        feet=gear.merlinic.feet.MAcc
    }


    sets.midcast['Enhancing Magic'] = set_combine(sets.magic_recast, {
    })

    sets.midcast['Enfeebling Magic'] = set_combine(sets.magic_accuracy, {})


    sets.midcast['Elemental Magic'] = set_combine(sets.magic_accuracy, {
        ammo=gear.ammo.mdmg,
        head=gear.merlinic.head.MAB,
        neck=gear.neck.macc,
        ear1=gear.ears.mab_left,
        ear2=gear.ears.mab_right,
        body=gear.ambuscade.morrigan.body,
        hands=gear.ambuscade.morrigan.hands,
        ring1="Shiva Ring",
        ring2="Shiva Ring",
        back=gear.jsecapes.amb.blm.mab,
        waist=gear.waist.macc,
        legs=gear.merlinic.legs.MAB,
        feet=gear.merlinic.feet.MAB
    })
    sets.midcast['Elemental Magic']['burst'] = set_combine(sets.midcast['Elemental Magic'], {
        hands = gear.merlinic.hands.burst,
        ring1 = gear.ring.mb_left,
        ring2 = gear.ring.mb_right
    })

    sets.midcast['Comet'] = set_combine(sets.midcast['Elemental Magic'], {
        head = gear.head.dark_magic
    })
    sets.midcast['Comet']['burst'] = set_combine(sets.midcast['Elemental Magic']['burst'], {
        head = gear.head.dark_magic
    })

    sets.MPReturn = { body="Spaekona's Coat +1" }

    sets.midcast['Dark Magic'] = set_combine(sets.magic_accuracy, {
        ring1=gear.ring.drain_aspir
    })

    sets.midcast.DrainAspir = set_combine(sets.midcast['Dark Magic'], {
        waist="Casso Sash"
    })
    sets.midcast['Drain'] = set_combine(sets.midcast.DrainAspir, {})
    sets.midcast['Aspir'] = set_combine(sets.midcast.DrainAspir, {})
    sets.midcast['Aspir II'] = set_combine(sets.midcast.DrainAspir, {})
    sets.midcast['Aspir III'] = set_combine(sets.midcast.DrainAspir, {})

    sets.midcast['Sneak'] = set_combine(sets.midcast['Enhancing Magic'], {
        back="Skulker's Cape"
    })
    sets.midcast['Invisible'] = set_combine(sets.midcast['Enhancing Magic'], {
        back="Skulker's Cape"
    })

    send_command('input /macro book 8;wait .1;input /macro set 1')
end

function job_midcast(spell)
    mp_efficiency = 1
    if buffactive['Manawell'] or spell.mppaftercast > 0.50 then 
        mp_efficiency = 0
    end
    base_midcast(spell)

    if spell.skill == 'Elemental Magic' then
        if mp_efficiency == 1 then
            equip(sets.MPReturn)
        end
    end
end

function weathercheck(spell_element,set)
    if not set then return end
    if spell_element == world.weather_element or spell_element == world.day_element then
        equip(set,sets.Obis[spell_element])
    else
        equip(set)
    end
    if set[spell_element] then equip(set[spell_element]) end
end