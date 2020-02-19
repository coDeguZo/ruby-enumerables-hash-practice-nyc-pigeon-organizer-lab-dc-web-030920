def nyc_pigeon_organizer(data)
 pigeon_hash = Hash.new
    data.each do |color_gender_lives, inner_keys|
        inner_keys.each do |category_key, name_arrays|
            name_arrays.each do |index_name|
                pigeon_hash[index_name] = {color: [], gender: [], lives: []}
            end
        end
    end
    data[:color].each do |attribute_color_key, pigeon_name_arrays|
        pigeon_name_arrays.each do |specific_name|
            if pigeon_hash[:color][attribute_color_key].include?(specific_name)
                puts pigeon_hash[specific_name][:color] << attribute_color_key.to_s
            end
        end
    end
    data
end

