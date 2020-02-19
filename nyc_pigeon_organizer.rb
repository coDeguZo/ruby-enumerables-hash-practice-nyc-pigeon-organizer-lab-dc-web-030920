def nyc_pigeon_organizer(data)
    pigeon_hash = Hash.new
    data.each do |cgl, inner_data|
        inner_data.each do |category_key, name_arrays|
            name_arrays.each do |name|
                pigeon_hash[name] = {color: [], gender: [], lives: []}
            end
        end
    end
  keys = pigeon_hash.keys #selects all the keys(:color, :gender, :lives)
  data[:color].each do |attribute_color, name|
    name.each do |pigeon_name|
      keys.each do |item|
        if pigeon_name === item
          pigeon_hash[item][:color] << attribute_color_color.to_s 
        end #Change the bird color key to a string.
      end 
    end 
  end 
  data[:gender].each do |pigeon_gender, type_of_pigeon|
    type_of_pigeon.each do |pigeon_name|
      keys.each do |item|
        if pigeon_name === item
          pigeon_hash[item][:gender] << gender.to_s
        end #Change :gender key to string.
      end 
    end 
  end 
  data[:lives].each do |pigeons_location, pigeons_name|
    pigeons_name.each do |bird_name|
      keys.each do |item|
        if pigeons_name === item
          pigeon_hash[item][:lives] << location
        end 
      end 
    end 
  end 
  return pigeon_hash
end 
