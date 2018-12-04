def reformat_languages(languages)
  #Step 1: Create combined hash of programs (style excluded)
  new_hash = {}
  languages.each do |style, hash_of_programs|
    new_hash.merge!(hash_of_programs)
  end

  new_hash.each do |program, type_hash|
    #Step 2: Add "style: []" to each program
    type_hash[:style] = []

    #Step 3: Shovel :oo or :functional into :style's array
    languages.each do |style, hash_of_programs|
      if hash_of_programs.has_key?(program)
        new_hash[program][:style] << style
      end
    end
  end

  new_hash
end
