-- SMN
-- Sets
function get_sets()
    include('Rooks-Include.lua')
    init_get_sets(1, 1)

    sets.idle = {
        main=gear.weapons.mage.refresh,
        sub=gear.weapons.mage.dt_grip,
        ammo=gear.ammo.dt,
        head=gear.head.mage_refresh,
        neck=gear.neck.dt,
        ear1=gear.ears.idle_left,
        ear2=gear.ears.idle_right,
        body=gear.body.mage_idle,
        hands=gear.telchine.hands,
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        back=gear.back.mage_idle,
        waist=gear.waist.mage_idle,
        legs=gear.legs.mage_pdt,
        feet="Herald's Gaiters"
    }
    sets.idle.base = set_combine(sets.idle, {})
    sets.idle.regen = set_combine(sets.idle, {
        ring1=gear.ring.regen_left,
        ring2=gear.ring.regen_right
    })
    sets.idle.DT = set_combine(sets.idle, {
        ring1=gear.ring.dt_left,
        ring2=gear.ring.dt_right,
        feet=gear.telchine.feet
    })
    sets.idle.PDT = set_combine(sets.idle.DT, {})
    sets.idle.MDT = set_combine(sets.idle.DT, {})
    sets.resting = set_combine(sets.idle, {
        main=gear.weapons.mage.refresh,
        sub=gear.weapons.mage.dt_grip,
        head=gear.head.mage_refresh,
        neck="Eidolon Pendant",
        ear1="Relaxing Earring",
        body="Chelona Blazer",
        back="Vita Cape",
        legs="Nisse Slacks",
        feet="Chelona Boots +1"
    })

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
        feet=gear.merlinic.feet.fc
    }


end