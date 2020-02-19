def nyc_pigeon_organizer(data)
    pigeon_hash = Hash.new
    data.each do |cgl, inner_data|
        inner_data.each do |category_key, name_arrays|
            name_arrays.each do |name|
                pigeon_hash[name] = {color: [], gender: [], lives: []}
            end
        end
    end
  option = pigeon_hash
  data[:color].each do |bird_color, name|
    name.each do |bird_name|
      option.each do |item|
        if bird_name === item
          pigeon_hash[item][:color] << bird_color.to_s
        end 
      end 
    end 
  end 
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      option.each do |item|
        if bird_name === item
          pigeon_hash[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 
  data[:lives].each do |location, name|
    name.each do |bird_name|
      option.each do |item|
        if bird_name === item
          pigeon_hash[item][:lives] << location
        end 
      end 
    end 
  end 
  return pigeon_hash
end 

