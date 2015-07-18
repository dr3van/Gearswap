# Gearswap
My Gearswap files. I try to split the difference between "simple for all cases" and "too much magic".

So, a simple Name_JOB.lua starts with this:

```
function get_sets()

  include('Rooks-Include.lua')
  init_get_sets(1)
    
end
```

## Commands
- F9 toggles PDT mode on and off.
- F10 toggles MDT mode on and off (it is superceded by PDT mode being on)
- Ctrl+F9 cycles through the combat options: DPS, midacc, highacc, defensive.
- Ctrl+F10 cycles through the idle options, regen and DT.

## Getting Started

To get started, you have two tasks:
- Fill in sets (we'll cover the naming shortly)
- Determine if you need any custom actions

So, for sets, there are a couple of types of actions to consider.
- Ranged attacks
- Job abilities
- Weapon skills
- Magic

### Job abilities

Job abilities are the simplest. If there is a sets.JA['Name of Job Ability'] defined,
it will use it. Example:

```
sets.JA['Divine Emblem'] = { feet="Creed Sabatons +2" }
```

### Ranged attacks

Here are the supported sets for ranged attacks:
- sets.snapshot (executed pre-shot, if defined)
- sets.ranged (default ranged attack set)

Additionally, if there is a sets.ranged subset defined for your current combat
mode, it will use that instead. So if you're in defensive, and you have defined
a sets.ranged.defensive, it will use that. If not, it will use sets.ranged.

### Weapon skills

Weapon skills use sets in a fixed order of preference. Let's say you want to use
the weapon skill Savage Blade, and you're in highacc mode.
- First it will check for sets.WS['Savage Blade']['highacc']
- If that doesn't exist, it will check for sets.WS['Savage Blade']
- If THAT doesn't exist, it will use sets.WS
- and if that doesn't exist, nothing happens at all

### Magic

So, for magic, there's the precast phase (what you start a spell in) and the
midcast phase (what you end a spell in). Precast is where you put things like
Fast Cast, Quick Magic, and similarly themed gear. Midcast is where you put
the gear that affects the spell itself, like Cure Potency, Magic Attack Bonus,
Enmity+, and the like.

For the precast phase, sets are used in this order of preference:
- sets.precast['Spell Name'], if it exists
- sets.precast['CureSpell'], if it exists and the spell is a Cure
- sets.precast['CuragaSpell'] if it exists and the spell is a Curaga
- sets.precast['Relevant Skill'] if it exists (such as sets.precast['Elemental Magic'])
- sets.precast.FC if it exists
- nothing

For the midcast phase, sets are used in this order of preference:
- sets.midcast['Spell Name'], if it exists
- sets.midcast['CureSpell'], if it exists and the spell is a Cure
- sets.midcast['CuragaSpell'] if it exists and the spell is a Curaga
- sets.midcast['RegenSpell'] if it exists and the spell is a Regen
- sets.midcast['Relevant Skill'] if it exists (such as sets.midcast['Elemental Magic'])
- nothing


## Status changes
The sets.idle, sets.resting, and sets.combat sets are used on the relevant changes.

Additionally, for idle and combat, if there is a subset defined for your current idle
or combat mode, it will use that instead, such as sets.combat['highacc'] or sets.idle['regen'].
