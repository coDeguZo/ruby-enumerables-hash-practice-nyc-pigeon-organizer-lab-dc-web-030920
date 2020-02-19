def nyc_pigeon_organizer(data)
    pigeon_hash = Hash.new
    data.each do |color_gender_lives, inner_keys|
        inner_keys.each do |category_key, name_arrays|
            name_arrays.each do |index_name|
                pigeon_hash[index_name] = {color: [], gender: [], lives: []}
            end
        end
    end
    
end

