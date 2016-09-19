-- Sets
function get_sets()

    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    sets.idle = {
        ammo="",
        head="",
        neck="",
        ear1="Hearty Earring",
        ear2="Ethereal Earring",
        body="",
        hands="",
        ring1="Sheltered Ring",
        ring2="Paguroidea Ring",
        back="Shadow Mantle",
        waist="",
        legs="",
        feet=""
    }

    sets.idle.regen = set_combine(sets.idle, {
    })
    sets.idle.DT = set_combine(sets.idle, {
    })

    sets.JA = {}

    sets.precast = {}
    sets.precast.FC = {
    }

    sets.resting = set_combine(sets.idle, {
    })

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
    sets.combat.highacc = set_combine(sets.combat, {})
    sets.combat.defensive = set_combine(sets.combat, {})


    sets.ranged = {
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

    sets.ranged.DPS = set_combine(sets.ranged, {})
    sets.ranged.midacc = set_combine(sets.ranged, {})
    sets.ranged.highacc = set_combine(sets.ranged, {})
    sets.ranged.evasion = set_combine(sets.ranged, {})


    -- WS sets

    sets.WS = {
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

    sets.lockstyle = {}

    send_command('input /macro book 1;wait .1;input /macro set 1')
    disable('main','sub')
end