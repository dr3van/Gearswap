-- SMN
-- Sets
function get_sets()
    include('Rooks-Include.lua')
    init_get_sets(1)
end

function job_precast(spell)
   windower.add_to_chat(123, "job_precast")
    if(spell.type) then
        windower.add_to_chat(123, "--- "..spell.type)
	else
        windower.add_to_chat(123, "--- No type")
    end
    if(spell.skill) then
        windower.add_to_chat(123, "--- "..spell.skill)
	else
        windower.add_to_chat(123, "--- No skill")
    end
    if(spell.name) then
        windower.add_to_chat(123, "--- "..spell.name)
	else
        windower.add_to_chat(123, "--- No name")
    end
   windower.add_to_chat(123, "job_precast")
end
function job_midcast(spell)
   windower.add_to_chat(123, "job_midcast")
    if(spell.type) then
        windower.add_to_chat(123, "--- "..spell.type)
	else
        windower.add_to_chat(123, "--- No type")
    end
    if(spell.skill) then
        windower.add_to_chat(123, "--- "..spell.skill)
	else
        windower.add_to_chat(123, "--- No skill")
    end
    if(spell.name) then
        windower.add_to_chat(123, "--- "..spell.name)
	else
        windower.add_to_chat(123, "--- No name")
    end
   windower.add_to_chat(123, "job_midcast")
end
function job_aftercast(spell)
    windower.add_to_chat(123, "job_aftercast")
    if(spell.type) then
        windower.add_to_chat(123, "--- "..spell.type)
	else
        windower.add_to_chat(123, "--- No type")
    end
    if(spell.skill) then
        windower.add_to_chat(123, "--- "..spell.skill)
	else
        windower.add_to_chat(123, "--- No skill")
    end
    if(spell.name) then
        windower.add_to_chat(123, "--- "..spell.name)
	else
        windower.add_to_chat(123, "--- No name")
    end
   windower.add_to_chat(123, "job_aftercast")
end
function job_pet_midcast(spell)
   windower.add_to_chat(123, "job_pet_midcast")
    if(spell.type) then
        windower.add_to_chat(123, "--- "..spell.type)
	else
        windower.add_to_chat(123, "--- No type")
    end
    if(spell.skill) then
        windower.add_to_chat(123, "--- "..spell.skill)
	else
        windower.add_to_chat(123, "--- No skill")
    end
    if(spell.name) then
        windower.add_to_chat(123, "--- "..spell.name)
	else
        windower.add_to_chat(123, "--- No name")
    end
   windower.add_to_chat(123, "job_pet_midcast")
end
function job_pet_aftercast(spell)
   windower.add_to_chat(123, "job_pet_aftercast")
    if(spell.type) then
        windower.add_to_chat(123, "--- "..spell.type)
	else
        windower.add_to_chat(123, "--- No type")
    end
    if(spell.skill) then
        windower.add_to_chat(123, "--- "..spell.skill)
	else
        windower.add_to_chat(123, "--- No skill")
    end
    if(spell.name) then
        windower.add_to_chat(123, "--- "..spell.name)
	else
        windower.add_to_chat(123, "--- No name")
    end
   windower.add_to_chat(123, "job_pet_aftercast")
end
