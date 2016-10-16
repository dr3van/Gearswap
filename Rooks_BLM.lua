-- BLM
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0, 1)

    sets.idle = {
        main=gear.weapons.mage.refresh,
        sub=gear.weapons.mage.nuke_grip,
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
        legs=gear.merlinic.legs.dt,
        feet="Herald's Gaiters"
    }
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
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
    sets.resting = set_combine(sets.idle, {
        main="Rsv.Cpt. Mace",
        sub="Legion Scutum",
        head="Wivre Hairpin",
        neck="Eidolon Pendant",
        ear1="Relaxing Earring",
        body="Chelona Blazer",
        back="Vita Cape",
        legs="Nisse Slacks",
        feet="Chelona Boots +1"        
    })

    sets.JA = {}

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
        head="Wicce Petasos",
        neck="Stoicheion Medal"
    })

    sets.combat = {
        ammo=gear.ammo.haste,
        neck=gear.neck.acc,
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        ring1="Rajas ring",
        ring2="K'ayres Ring",
        back="Rancorous Mantle",
        waist="Cetl Belt"
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    -- WS sets

    sets.WS = {
        ammo="Jukukik Feather",
        neck="Fotia Gorget",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        ring1="Rajas ring",
        ring2="K'ayres Ring",
        back="Rancorous Mantle",
        waist="Fotia Belt"
    }

    sets.magic_accuracy = {
        main=gear.weapons.mage.macc,
        sub="Bugard strap +1",
        ammo="Aqua Sachet",
        head=gear.merlinic.head.MAcc,
        neck=gear.neck.macc,
        ear1=gear.ears.macc_mnd,
        ear2=gear.ears.macc_int,
        body=gear.ambuscade.morrigan.body,
        hands=gear.merlinic.hands.MAcc,
        ring1=gear.ring.macc,
        ring2="Aquasoul Ring",
        back=gear.back.macc,
        waist=gear.waist.macc,
        legs=gear.merlinic.legs.MAcc,
        feet=gear.merlinic.feet.MAcc
    }


    sets.midcast['Enhancing Magic'] = set_combine(sets.magic_recast, {
    })

    sets.midcast['Enfeebling Magic'] = set_combine(sets.magic_accuracy, {})


    sets.midcast['Elemental Magic'] = set_combine(sets.magic_accuracy, {
        main=gear.weapons.BLM.Nuke,
        sub="Zuuxowu Grip",
        ammo="Dosis Tathlum",
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

    sets.MPReturn = { body="Spaekona's Coat" }

    sets.midcast['Dark Magic'] = set_combine(sets.magic_accuracy, {
    })

    -- Specific spells
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
            equip(set_combine(sets.midcast['Elemental Magic'], sets.MPReturn))
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