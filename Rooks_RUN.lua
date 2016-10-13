-- RUN
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

    sets.JA = {}
    sets.JA['Ignis'] = {}
    sets.JA['Gelus'] = {}
    sets.JA['Flabra'] = {}
    sets.JA['Tellus'] = {}
    sets.JA['Sulpor'] = {}
    sets.JA['Unda'] = {}
    sets.JA['Lux'] = {}
    sets.JA['Tenebrae'] = {}

    sets.JA['Lunge'] = {}
    sets.JA['Vallation'] = {}
    sets.JA['Swordplay'] = {}
    sets.JA['Pflug'] = {}
    sets.JA['Valiance'] = {}
    sets.JA['Embolden'] = {}
    sets.JA['Gambit'] = {}
    sets.JA['Liement'] = {}
    sets.JA['One For All'] = {}
    sets.JA['Elemental Sforzo'] = {}


    sets.combat = {
        ammo=gear.ammo.haste,
        head=gear.herculean.head.tp,
        neck=gear.neck.tp,
        ear1=gear.ears.da_left,
        ear2=gear.ears.da_right,
        body=gear.ambuscade.skadi.body,
        hands=gear.ambuscade.skadi.hands,
        ring1="Rajas Ring",
        ring2="Epona's Ring",
        back="Atheling Mantle",
        waist=gear.waist.nohaste,
        legs=gear.herculean.legs.tp,
        feet=gear.herculean.feet.tp
    }

    sets.combat.DPS = set_combine(sets.combat, {})
    sets.combat.midacc = set_combine(sets.combat, {
        back="Letalis Mantle"
    })
    sets.combat.highacc = set_combine(sets.combat.midacc, {})
    sets.combat.defensive = set_combine(sets.combat, {})


    -- WS sets

    sets.WS = {
        ammo=gear.ammo.haste,
        head=gear.herculean.head.ws,
        neck=gear.neck.ws,
        ear1="Brutal Earring",
        ear2=gear.ears.ws,
        body=gear.ambuscade.skadi.body,
        hands=gear.ambuscade.skadi.hands,
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Atheling Mantle",
        waist=gear.waist.ws,
        legs=gear.herculean.legs.ws,
        feet=gear.herculean.feet.ws
    }

    send_command('input /macro book 12;wait .1;input /macro set 1')
end