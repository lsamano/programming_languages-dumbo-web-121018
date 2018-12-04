def reformat_languages(languages)
  new_hash = {}
  languages.each do |style|
    style.each do |program, type_hash|
      if new_hash[program] == nil #Checks if the city hasn't been added.
      new_hash[program] = [] #Adds the city key with an empty array.
    end
    new_hash[program] << style[program] #Shovels school into the array.
    end
  end

  return new_hash
end
