-- NIN
-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    gear.idle_feet = "Hachi. Kyahan +1"
    gear.idle_feet_day = "Danzo Sune-Ate"
    gear.idle_feet_night = "Hachi. Kyahan +1"

    sets.idle = {
        ammo="Iron Gobbet",
        head=gear.taeon.head.tp,
        neck=gear.neck.regen,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.taeon.body.tp,
        hands=gear.taeon.hands.tp,
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right,
        back="Shadow Mantle",
        waist=gear.waist.pdt,
        legs=gear.taeon.legs.tp,
        feet=gear.idle_feet
    }

    sets.idle.DT = set_combine(sets.idle, {
        neck=gear.neck.dt,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back=gear.back.dt,
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})

    sets.combat = {
        ammo="Seething Bomblet +1",
        head=gear.herculean.head.tp,
        neck=gear.neck.tp,
        ear1=gear.ears.melee_acc_left,
        ear2=gear.ears.melee_acc_right,
        body="Samnuha Coat",
        hands="Floral Gauntlets",
        ring1="Chirich Ring",
        ring2="Epona's Ring",
        back="Letalis Mantle",
        waist="Windbuffet Belt +1",
        legs=gear.herculean.legs.tp,
        feet=gear.herculean.feet.tp
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {})
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {
        neck=gear.neck.dt,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back=gear.back.dt,
    })

    sets.JA = {}

    -- WS sets

    sets.WS = {
        ammo="Seething Bomblet +1",
        head=gear.herculean.head.ws,
        neck=gear.neck.ws,
        ear1="Brutal Earring",
        ear2=gear.ears.ws,
        body="Samnuha Coat",
        hands="Floral Gauntlets",
        ring1="Ramuh Ring +1",
        ring2="Epona's Ring",
        back="Letalis Mantle",
        waist=gear.waist.ws,
        legs=gear.herculean.legs.ws,
        feet=gear.herculean.feet.ws
    }

    send_command('input /macro book 7;wait .1;input /macro set 1')

--    windower.register_event('time change', time_change)
end

function job_time_change(job_time_class)
    windower.add_to_chat(123, 'tick?')
    if job_time_class.dusk_to_dawn then
        windower.add_to_chat(123, 'foo')
        gear.idle_feet = gear.idle_feet_night
    else
        windower.add_to_chat(123, 'bar')
        gear.idle_feet = gear.idle_feet_day
    end
end