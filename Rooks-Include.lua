-- v.20161115.1
res = require('resources')

function init_get_sets(weapon_lock, gear_file)

    include('organizer-lib')
    include('Rooks-Gear.lua')

    send_command('bind ^f8 gs c toggle weaponlock')
    send_command('bind f9 gs c toggle pdt')
    send_command('bind ^f9 gs c toggle mdt')
    send_command('bind f10 gs c toggle combat set')
    send_command('bind ^f10 gs c toggle magic set')
    send_command('bind ^f11 gs c toggle idle set')

    combat_sets = {'DPS', 'midacc', 'highacc', 'defensive' }
    combat_sets_description = { 'Physical DPS', 'Moderate physical accuracy', 'High physical accuracy', 'Defensive' }
    combat_index = 1
    combat_index_max = 4

    magic_sets = {'DPS', 'midacc', 'highacc', 'burst' }
    magic_sets_description = { 'Magical DPS', 'Moderate magical accuracy', 'High magical accuracy', 'Magic Burst'}
    magic_index = 1
    magic_index_max = 4

    idle_sets = { 'base', 'regen', 'DT' }
    idle_sets_description = { 'Idle base', 'Idle regen', 'Idle DT' }
    idle_index = 1
    idle_index_max = 3

    is_pdt = 0
    is_mdt = 0

    weapon_locked = weapon_lock

    use_obi = 0

    time_class = {}

    spells = {}
    spells.cures = S{ "Cure", "Cure II", "Cure III", "Cure IV", "Cure V", "Cure VI" }
    spells.curagas = S{ "Curaga", "Curaga II", "Curaga III", "Curaga IV", "Curaga V", "Cura", "Cura II", "Cura III" }
    spells.regens = S{ "Regen", "Regen II", "Regen III", "Regen IV", "Regen V" }
    spells.helices = S{ "Geohelix", "Hydrohelix", "Anemohelix", "Pyrohelix", "Cryohelix", "Ionohelix", "Luminohelix",
        "Noctohelix", "Geohelix II", "Hydrohelix II", "Anemohelix II", "Pyrohelix II", "Cryohelix II", "Ionohelix II",
        "Luminohelix II", "Noctohelix II" }

    -- Grab the gear
    if gear_file then
        init_gear()
    end

    -- ALL JOBS, ALL CHARACTERS
    sets.reive = { neck="Adoulin's Refuge +1" }
    sets.adoulin = { body="Councilor's Garb" }

    sets.idle = {
        ammo="Iron Gobbet",
        head="",
        neck="Wiglen Gorget",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body="",
        hands="",
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Shadow Mantle",
        waist="Ocean Sash",
        legs="",
        feet=""
    }

    sets.idle.base = set_combine(sets.idle, {})
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
        ammo="",
        head="",
        neck="",
        ear1="",
        ear2="",
        body="",
        hands="",
        ring1="",
        ring2="",
        back="",
        waist="",
        legs="",
        feet=""
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {})


    sets.snapshot = {}
    sets.ranged = {}
    sets.ranged.DPS = set_combine(sets.ranged, {})
    sets.ranged.midacc = set_combine(sets.ranged, {})
    sets.ranged.highacc = set_combine(sets.ranged, {})
    sets.ranged.defensive = set_combine(sets.ranged, {})


    -- WS sets

    sets.WS = {
        ammo="",
        head="",
        neck="Fotia Gorget",
        ear1="",
        ear2="",
        body="",
        hands="",
        ring1="",
        ring2="",
        back="",
        waist="Fotia Belt",
        legs="",
        feet=""
    }

    -- Pet sets. I use magical accuracy for pet sets because I had to pick one
    -- and that was the one I picked.

    sets.pet = {}
    sets.pet.midcast = {}
    sets.pet.aftercast = {}


    if gear_file then
        organizer_items = gear.universal
    end

    send_command('@input /echo F9 toggles PDT on and off')
    send_command('@input /echo Ctrl+F9 toggles MDT on and off')
    send_command('@input /echo F10 toggles physical damage/accuracy/defensive options')
    send_command('@input /echo Ctrl+F10 toggles magical damage/accuracy/burst options')
    send_command('@input /echo Ctrl+F11 toggles idle set options')

    if weapon_locked == 0 then
        enable('main','sub')
        send_command('@input /echo Weapon unlocked by default')
    else
        disable('main','sub')
        send_command('@input /echo Weapon locked by default')
    end
end

function base_precast(spell)
    if sets.JA[spell.name] then
        equip(sets.JA[spell.name])
    elseif spell.type == 'WeaponSkill' then
        if sets.WS[spell.name] then
            if sets.WS[spell.name][combat_sets[combat_index]] then
                equip(sets.WS[spell.name][combat_sets[combat_index]])
            else
                equip(sets.WS[spell.name])
            end
        else
            if sets.WS then
                equip(sets.WS)
            end
        end
    elseif spell.action_type == 'Ability' then
        if sets.precast[spell.type] then
            equip(sets.precast[spell.type])
        end
    elseif spell.action_type == 'Magic' then
        if sets.precast[spell.name] then
            equip(sets.precast[spell.name])
        elseif sets.precast['CureSpell'] and spells.cures:contains(spell.name) then
            equip(sets.precast['CureSpell'])
        elseif sets.precast['CuragaSpell'] and spells.curagas:contains(spell.name) then
            equip(sets.precast['CuragaSpell'])
        elseif sets.precast.FC[spell.skill] then
            equip(sets.precast.FC[spell.skill])
        elseif sets.precast.FC then
            equip(sets.precast.FC)
        end
    elseif spell.action_type == 'Ranged Attack' then
        if sets.snapshot then
            equip(sets.snapshot)
        end
    end
end

function base_midcast(spell)
    if spell.action_type == 'Ranged Attack' then
        if sets.ranged[combat_sets[combat_index]] then
            equip(sets.ranged[combat_sets[combat_index]])
        else
            equip(sets.ranged)
        end
    else
        if sets.midcast[spell.name] then
            if sets.midcast[spell.name][magic_sets[magic_index]] then
                equip(sets.midcast[spell.name][magic_sets[magic_index]])
            else
                equip(sets.midcast[spell.name])
            end
        elseif sets.midcast['CureSpell'] and spells.cures:contains(spell.name) then
            equip(sets.midcast['CureSpell'])
        elseif sets.midcast['CuragaSpell'] and spells.curagas:contains(spell.name) then
            equip(sets.midcast['CuragaSpell'])
        elseif sets.midcast['RegenSpell'] and spells.regens:contains(spell.name) then
             equip(sets.midcast['RegenSpell'])
        elseif sets.midcast[spell.skill] then
            if sets.midcast[spell.skill][magic_sets[magic_index]] then
                equip(sets.midcast[spell.skill][magic_sets[magic_index]])
            else
                equip(sets.midcast[spell.skill])
            end
        end

        if element_check(spell.element) then
            if use_obi == 1 then
                equip({ waist="Hachirin-no-Obi" })
            end
        end
    end
end

function base_aftercast(spell)
    -- Don't swap to aftercast if the player or a pet in the middle of doing something
    -- pet_aftercast() calls aftercast() to handle it
    skip_aftercast = S{ "BloodPactWard", "BloodPactRage" }
    if midaction() or pet_midaction() then
        return
    end
    if spell and spell.type and skip_aftercast:contains(spell.type) then
        return
    end

    if is_pdt == 1 then
        equip(sets.idle.PDT)
    elseif is_mdt == 1 then
        equip(sets.idle.MDT)
    else
        if player.status =='Engaged' then
            if(sets.combat[combat_sets[combat_index]]) then
                equip(sets.combat[combat_sets[combat_index]])
            else
                equip(sets.combat)
            end
        else
            if(sets.idle[idle_sets[idle_index]]) then
                equip(sets.idle[idle_sets[idle_index]])
            else
                equip(sets.idle)
            end
        end
    end
end

function base_pet_midcast(spell)
    if sets.pet.midcast[spell.name] then
        if sets.pet.midcast[spell.name][magic_sets[magic_index]] then
            equip(sets.pet.midcast[spell.name][magic_sets[magic_index]])
        else
            equip(sets.pet.midcast[spell.name])
        end
    elseif sets.pet.midcast[spell.type] then
        if sets.pet.midcast[spell.type][magic_sets[magic_index]] then
            equip(sets.pet.midcast[spell.type][magic_sets[magic_index]])
        else
            equip(sets.pet.midcast[spell.type])
        end
    end
end

function base_pet_aftercast(spell)
    -- Just call aftercast(). We didn't do it before so the pet could do its thing.
    aftercast()
end


function status_change(new,old)
    if(windower.ffxi.get_info().logged_in) then
        if is_pdt == 1 then
            equip(sets.idle.PDT)
        elseif is_mdt == 1 then
            equip(sets.idle.MDT)
        else
            if new == 'Idle' then
                if(sets.idle[idle_sets[idle_index]]) then
                    equip(sets.idle[idle_sets[idle_index]])
                else
                    equip(sets.idle)
                end
            elseif new == 'Resting' then
                equip(sets.resting)
            elseif new == 'Engaged' then
                if(sets.combat[combat_sets[combat_index]]) then
                    equip(sets.combat[combat_sets[combat_index]])
                else
                    equip(sets.combat)
                end
            end
        end
    end
end

function base_self_command(command)
    if command == 'toggle combat set' then
        combat_index = combat_index + 1
        if combat_index > combat_index_max then
            combat_index = 1
        end
        send_command('@input /echo '..combat_sets_description[combat_index])
    elseif command == 'toggle magic set' then
        magic_index = magic_index + 1
        if magic_index > magic_index_max then
            magic_index = 1
        end
        send_command('@input /echo '..magic_sets_description[magic_index])
    elseif command == 'toggle idle set' then
        idle_index = idle_index + 1
        if idle_index > idle_index_max then
            idle_index = 1
        end
        send_command('@input /echo '..idle_sets_description[idle_index])
    elseif command == 'toggle pdt' then
        if is_pdt == 1 then
            is_pdt = 0
            send_command('@input /echo PDT Off')
        elseif is_pdt == 0 then
            is_pdt = 1
            is_mdt = 0
            send_command('@input /echo PDT On')
        end
    elseif command == 'toggle mdt' then
        if is_mdt == 1 then
            is_mdt = 0
            send_command('@input /echo MDT Off')
        elseif is_mdt == 0 then
            is_mdt = 1
            is_pdt = 0
            send_command('@input /echo MDT On')
        end
    elseif command == 'toggle weaponlock' then
        if weapon_locked == 0 then
            weapon_locked = 1
            disable('main','sub')
            send_command('@input /echo Weapon locked')
        else
            weapon_locked = 0
            enable('main','sub')
            send_command('@input /echo Weapon unlocked')
        end
    end
    aftercast()
end

function precast(spell)
    if job_precast then
        job_precast(spell)
    else
        base_precast(spell)
    end
end

function midcast(spell)
    if job_midcast then
        job_midcast(spell)
    else
        base_midcast(spell)
    end
end

function aftercast(spell)
    if job_aftercast then
        job_aftercast(spell)
    else
        base_aftercast(spell)
    end
end

function pet_midcast(spell)
    if job_pet_midcast then
        job_pet_midcast(spell)
    else
        base_pet_midcast(spell)
    end
end

function pet_aftercast(spell)
    if job_pet_aftercast then
        job_pet_aftercast(spell)
    else
        base_pet_aftercast(spell)
    end
end


function self_command(command)
    if job_self_command then
        job_self_command(command)
    else
        base_self_command(command)
    end
end

function buff_change(new, bool)
    if new == 'Reive Mark' and bool then
        equip(sets.reive)
        disable('neck')
    elseif new == 'Reive Mark' and not bool then
        enable('neck')
        aftercast()
    end
end

function element_check(element)
    if element == world.weather_element or element == world.day_element then
        return true
    end
    return false
end

-- Put this line in for any job you want to handle time changes in
--     windower.register_event('time change', time_change)
function time_change(new_time, old_time)
    if new_time >= 6*60 and new_time < 18*60 then
        time_class.daytime = true
        time_class.nighttime = false
    else
        time_class.daytime = false
        time_class.nighttime = true
    end

    if new_time >= 17*60 and new_time < 7*60 then
        time_class.dusk_to_dawn = true
    else
        time_class.dusk_to_dawn = false
    end

    if job_time_change then
        job_time_change(time_class)
    end
end
