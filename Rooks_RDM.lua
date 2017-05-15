-- RDM
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(0, 1)

    use_obi = 1

    sets.idle = {
        ammo=gear.ammo.dt,
        head=gear.jse.relic.rdm.head,
        neck=gear.neck.dt,
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body=gear.body.mage_idle,
        hands="Leyline Gloves",
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back=gear.back.mage_idle,
        waist=gear.waist.pdt,
        legs=gear.carmine.legs.D,
        feet="Medium's Sabots"
    }

    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        head=gear.jse.relic.rdm.head,
        neck=gear.neck.regen,
        body=gear.ambuscade.morrigan.body,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right,
        waist=gear.waist.mage_idle,
        legs="Nares Trews"
    })
    sets.idle.DT = set_combine(sets.idle, {
        head=gear.gendewitha.head.pdt
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle.regen, {
        ear1="Relaxing Earring",
        feet="Chelona Boots +1"
    })

    -- FC: 61%
    -- QC: 8%
    sets.precast.FC = {
        ammo=gear.ammo.fc,              -- 0% FC 2% QC
        head=gear.carmine.head.D,       -- 14% FC 0% QC
        neck=gear.neck.fc,              -- 5% FC 0% QC
        ear1="Loquac. Earring",         -- 2% FC 0% QC
        ear2="Estq. Earring",           -- 2% FC 0% QC
        body=gear.jse.relic.rdm.body,   -- 12% FC 0% QC
        hands=gear.hands.melee_fc,      -- 8% FC 0% QC
        ring1=gear.ring.fc_left,        -- 0% FC 2% QC
        ring2=gear.ring.fc_right,       -- 0% FC 1% QC
        back=gear.back.fc,              -- 3% FC 0% QC
        waist=gear.waist.fc,            -- 3% FC 3% QC
        legs=gear.psycloth.legs.D,      -- 7% FC 0% QC
        feet="Chelona Boots +1"         -- 5% FC 0% QC
    }

    sets.combat = {
        ammo=gear.ammo.haste,
        head=gear.ambuscade.morrigan.head,
        neck=gear.neck.sword,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.ambuscade.morrigan.body,
        hands=gear.taeon.hands.tp,
        ring1="Rajas ring",
        ring2="Chirich Ring",
        back="Atheling Mantle",
        waist=gear.waist.highhaste,
        legs=gear.ambuscade.morrigan.legs,
        feet=gear.taeon.feet.tp
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {
        neck=gear.neck.sword,
        ear1=gear.ears.melee_acc_left,
        ear2=gear.ears.melee_acc_right,
        ring2="Chirich Ring",
        back="Letalis Mantle"
    })
    sets.combat.highacc = set_combine(sets.combat.midacc, {
    })
    sets.combat.defensive = set_combine(sets.combat, {})


    sets.JA = {}
    sets.JA["Chainspell"] = { body=gear.jse.relic.rdm.body }
    sets.JA["Saboteur"] = { feet=gear.jse.empyrean.rdm.feet }

    -- WS sets

    sets.WS = {
        ammo=gear.ammo.haste,
        head=gear.ambuscade.morrigan.head,
        neck=gear.neck.ws,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.ambuscade.morrigan.body,
        hands=gear.ambuscade.morrigan.hands,
        ring1="Rajas ring",
        ring2="Ifrit Ring",
        back="Atheling Mantle",
        waist=gear.waist.ws,
        legs=gear.ambuscade.morrigan.legs,
        feet=gear.ambuscade.morrigan.feet
    }

-- START HERE

    -- Magic sets
    sets.magic_recast = {}
    sets.magic_accuracy = {
        ammo=gear.ammo.macc,
        head=gear.merlinic.head.MAcc,
        neck=gear.neck.macc,
        ear1=gear.ears.macc_left,
        ear2=gear.ears.macc_right,
        body=gear.vanya.body.C,
        hands=gear.ambuscade.morrigan.hands,
        ring1=gear.ring.macc_left,
        ring2=gear.ring.macc_right,
        back=gear.back.macc,
        waist=gear.waist.macc,
        legs=gear.ambuscade.morrigan.legs,
        feet=gear.ambuscade.morrigan.feet
    }

    sets.midcast['Enfeebling Magic'] = set_combine(sets.magic_accuracy, {
    })

    sets.midcast['Enfeebling Magic']['White Magic'] = set_combine(sets.midcast['Enfeebling Magic'], {})

    sets.midcast['Enfeebling Magic']['Black Magic'] = set_combine(sets.midcast['Enfeebling Magic'], {
        body=gear.ambuscade.morrigan.body
    })

    sets.precast.CureSpell = set_combine(sets.precast.FC, {
        body=gear.telchine.body.cure_cast,
        feet=gear.vanya.feet.D
    })
    sets.precast.CuragaSpell = set_combine(sets.precast.CureSpell, {})

    sets.midcast.CureSpell = {
        head=gear.gendewitha.head.pdt,
        neck=gear.neck.cure_potency,
        ear1="Roundel Earring",
        ear2="Lifestorm Earring",
        body=gear.jse.relic.rdm.body,
        hands=gear.telchine.hands.cure_potency,
        ring1=gear.ring.healing_left,
        ring2=gear.ring.cure_potency,
        back=gear.back.cure_potency,
        waist=gear.waist.conserve_mp,
        legs=gear.jse.artifact.rdm.legs,
        feet=gear.vanya.feet.D
    }
    sets.midcast.CuragaSpell = set_combine(sets.midcast.CureSpell, {})
    sets.midcast.RegenSpell = {
        body=gear.telchine.body.cure_cast
    }

    sets.midcast['Enhancing Magic'] = set_combine(sets.magic_recast, {
        body=gear.jse.relic.rdm.head,
        hands=gear.jse.relic.rdm.hands,
        ring1=gear.ring.magic_skill_left,
        ring2=gear.ring.magic_skill_right,
        back="Estoqueur's Cape",
        waist=gear.waist.conserve_mp,
        legs=gear.jse.artifact.rdm.legs,
        feet=gear.jse.empyrean.rdm.feet
    })

    sets.midcast['Elemental Magic'] = set_combine(sets.magic_accuracy, {
        head=gear.merlinic.head.MAB,
        ear1=gear.ears.mab_left,
        ear2=gear.ears.mab_right,
        body=gear.ambuscade.morrigan.body,
        hands=gear.merlinic.hands.MAB,
        ring1="Shiva Ring",
        ring2="Shiva Ring",
        legs=gear.merlinic.legs.MAB,
        feet=gear.merlinic.feet.MAB
    })

    sets.midcast['Dark Magic'] = set_combine(sets.magic_accuracy, {
    })

    -- Specific spells
    sets.midcast['Refresh'] = set_combine(sets.midcast['Enhancing Magic'], {
        legs=gear.jse.empyrean.rdm.legs
    })
    sets.midcast['Refresh II'] = set_combine(sets.midcast['Enhancing Magic'], {
        legs=gear.jse.empyrean.rdm.legs
    })
    sets.midcast['Phalanx II'] = set_combine(sets.midcast['Enhancing Magic'], {
        hands=gear.jse.relic.rdm.hands
    })
    sets.midcast['Sneak'] = set_combine(sets.midcast['Enhancing Magic'], {
        back="Skulker's Cape"
    })
    sets.midcast['Invisible'] = set_combine(sets.midcast['Enhancing Magic'], {
        back="Skulker's Cape"
    })
    sets.midcast['Paralyze II'] = set_combine(sets.midcast['Enfeebling Magic']['White Magic'], {
        feet=gear.jse.relic.rdm.boots
    })
    sets.midcast['Slow II'] = set_combine(sets.midcast['Enfeebling Magic']['White Magic'], {
        head=gear.jse.relic.rdm.head
    })
    sets.midcast['Dia III'] = set_combine(sets.midcast['Enfeebling Magic']['White Magic'], {
        head=gear.jse.relic.rdm.head
    })
    sets.midcast['Blind II'] = set_combine(sets.midcast['Enfeebling Magic']['Black Magic'], {
        legs=gear.jse.relic.rdm.legs
    })
    sets.midcast['Bio III'] = set_combine(sets.midcast['Enfeebling Magic']['Black Magic'], {
        legs=gear.jse.relic.rdm.legs
    })
    send_command('input /macro book 2;wait .1;input /macro set 1')
end

function job_precast(spell)
    if buffactive['Chainspell'] or buffactive['Spontaneity'] then
        midcast(spell)
    else
        base_precast(spell)
    end
end

function job_midcast(spell)
    if spell.skill == 'Enfeebling Magic' then
        if spell.type == 'White Magic' then
            equip(sets.midcast['Enfeebling Magic']['White Magic'])
        else
            equip(sets.midcast['Enfeebling Magic']['Black Magic'])
        end
    else
        base_midcast(spell)
    end
end