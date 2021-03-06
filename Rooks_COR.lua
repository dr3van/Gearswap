-- COR
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    send_command('bind f8 gs c toggle luzaf')
    luzaf_mode = 0

    bullets = {}
    bullets['Ranged Attack'] = "Adlivun Bullet"
    bullets['Quick Draw'] = "Adlivun Bullet"

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
    sets.idle.DT = set_combine(sets.idle, {
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {})

    sets.JA = {}
    sets.JA.rolls = {}

    sets.JA.rolls["Caster's Roll"] = set_combine(sets.JA.rolls, {legs="Navarch's Culottes +2"})
    sets.JA.rolls["Courser's Roll"] = set_combine(sets.JA.rolls, {feet="Navarch's Bottes +2"})
    sets.JA.rolls["Blitzer's Roll"] = set_combine(sets.JA.rolls, {head="Navarch's Tricorne +2"})
    sets.JA.rolls["Tactician's Roll"] = set_combine(sets.JA.rolls, {body="Navarch's Frac +2"})
    sets.JA.rolls["Allies' Roll"] = set_combine(sets.JA.rolls, {hands="Navarch's Gants +2"})

    sets.precast = {}
    sets.precast.FC = {
        ear1="Loquac. Earring",
        legs="Blood Cuisses"
    }

    sets.combat = {
        head=gear.herculean.head.tp,
        neck=gear.neck.tp,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.ambuscade.skadi.body,
        hands=gear.herculean.hands.tp,
        ring1="Chirich Ring",
        ring2="Epona's Ring",
        back="Letalis Mantle",
        waist=gear.waist.nohaste,
        legs=gear.herculean.legs.tp,
        feet=gear.herculean.feet.tp
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {
        back="Letalis Mantle"
    })
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})

    sets.snapshot = {
        hands="Manibozho Gloves",
        legs="Nahtirah Trousers"
    }
    sets.ranged = {}
    sets.ranged.DPS = set_combine(sets.ranged, {})
    sets.ranged.midacc = set_combine(sets.ranged, {})
    sets.ranged.highacc = set_combine(sets.ranged, {})
    sets.ranged.defensive = set_combine(sets.ranged, {})

    -- Quickdraw!
    sets.JA['Quick Draw'] = {
        head=gear.ambuscade.skadi.head,
        neck=gear.neck.macc,
        ear1=gear.ears.mab_left,
        ear2=gear.ears.mab_right,
        body=gear.ambuscade.skadi.body,
        hands=gear.hands.melee_MAB,
        ring1="Stormsoul Ring",
        ring2="Stormsoul Ring",
        back="Toro Cape",
        waist="Eschan Stone",
        legs=gear.ambuscade.skadi.legs,
        feet=gear.ambuscade.skadi.feet
    }

    -- WS sets

    sets.WS = {
        head=gear.herculean.head.tp,
        neck=gear.neck.ws,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.taeon.body.tp,
        hands=gear.taeon.hands.tp,
        ring1="Rajas Ring",
        ring2="Epona's Ring",
        back="Atheling Mantle",
        waist=gear.waist.ws,
        legs=gear.herculean.legs.tp,
        feet=gear.herculean.feet.tp
    }

    sets.WS['Leaden Salute'] = {
        head="Pixie Hairpin +1",
        neck="Sanctity Necklace",
        ear1=gear.ears.mab_left,
        ear2=gear.ears.mab_right,
        body="Samnuha Coat",
        hands="Leyline Gloves",
        ring1="Garuda Ring",
        ring2="Dingir Ring",
        back="Toro Cape",
        waist=gear.waist.ws,
        legs=gear.herculean.legs.tp,
        feet=gear.herculean.feet.tp
    }


    -- Roll info
    rolls = {
        ["Corsair's Roll"] = {lucky=5, unlucky=9, bonus="Experience Points"},
        ["Ninja Roll"] = {lucky=4, unlucky=8, bonus="Evasion"},
        ["Hunter's Roll"] = {lucky=4, unlucky=8, bonus="Accuracy"},
        ["Chaos Roll"] = {lucky=4, unlucky=8, bonus="Attack"},
        ["Magus's Roll"] = {lucky=2, unlucky=6, bonus="Magic Defense"},
        ["Healer's Roll"] = {lucky=3, unlucky=7, bonus="Cure Potency Received"},
        ["Puppet Roll"] = {lucky=4, unlucky=8, bonus="Pet Magic Accuracy/Attack"},
        ["Choral Roll"] = {lucky=2, unlucky=6, bonus="Spell Interruption Rate"},
        ["Monk's Roll"] = {lucky=3, unlucky=7, bonus="Subtle Blow"},
        ["Beast Roll"] = {lucky=4, unlucky=8, bonus="Pet Attack"},
        ["Samurai Roll"] = {lucky=2, unlucky=6, bonus="Store TP"},
        ["Evoker's Roll"] = {lucky=5, unlucky=9, bonus="Refresh"},
        ["Rogue's Roll"] = {lucky=5, unlucky=9, bonus="Critical Hit Rate"},
        ["Warlock's Roll"] = {lucky=4, unlucky=8, bonus="Magic Accuracy"},
        ["Fighter's Roll"] = {lucky=5, unlucky=9, bonus="Double Attack Rate"},
        ["Drachen Roll"] = {lucky=3, unlucky=7, bonus="Pet Accuracy"},
        ["Gallant's Roll"] = {lucky=3, unlucky=7, bonus="Defense"},
        ["Wizard's Roll"] = {lucky=5, unlucky=9, bonus="Magic Attack"},
        ["Dancer's Roll"] = {lucky=3, unlucky=7, bonus="Regen"},
        ["Scholar's Roll"] = {lucky=2, unlucky=6, bonus="Conserve MP"},
        ["Bolter's Roll"] = {lucky=3, unlucky=9, bonus="Movement Speed"},
        ["Caster's Roll"] = {lucky=2, unlucky=7, bonus="Fast Cast"},
        ["Courser's Roll"] = {lucky=3, unlucky=9, bonus="Snapshot"},
        ["Blitzer's Roll"] = {lucky=4, unlucky=9, bonus="Attack Delay"},
        ["Tactician's Roll"] = {lucky=5, unlucky=8, bonus="Regain"},
        ["Allies's Roll"] = {lucky=3, unlucky=10, bonus="Skillchain Damage"},
        ["Miser's Roll"] = {lucky=5, unlucky=7, bonus="Save TP"},
        ["Companion's Roll"] = {lucky=2, unlucky=10, bonus="Pet Regain and Regen"},
        ["Avenger's Roll"] = {lucky=4, unlucky=8, bonus="Counter Rate"},
    }

    send_command('input /macro book 17;wait .1;input /macro set 5')
end

-- Mechanics

function job_precast(spell)
    if spell.type == 'CorsairRoll' or spell.english == 'Double-Up' then
        if sets.JA.rolls[spell.name] then
            if luzaf_mode == 1 then
                equip(set_combine(sets.JA.rolls[spell.name], { ring1="Luzaf's Ring" }))
            else
                equip(sets.JA.rolls[spell.name])
            end
        else
            if luzaf_mode == 1 then
                equip(set_combine(sets.JA.rolls, { ring1="Luzaf's Ring" }))
            else
                equip(sets.JA.rolls)
            end
        end
        -- Slightly redundant but we don't care about Double-Up
        if spell.type == 'CorsairRoll' then
            windower.add_to_chat(123, ""..spell.name.." ["..rolls[spell.name]['bonus'].."] :: Lucky: "..rolls[spell.name]['lucky'].." Unlucky: "..rolls[spell.name]['unlucky'].."")
        end
    else
        base_precast(spell)
    end
end


function job_self_command(command)
    if command == 'toggle luzaf' then
        if luzaf_mode == 1 then
            luzaf_mode = 0
            send_command('@input /echo Turning off Luzaf')
        elseif luzaf_mode == 0 then
            luzaf_mode = 1
            send_command('@input /echo Luzaf on')
        end
    else
        base_self_command(command)
    end
    aftercast()
end