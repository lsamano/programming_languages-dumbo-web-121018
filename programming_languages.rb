def reformat_languages(languages)
  new_hash = {}
  languages.each do |style|
    style.each do |program, type_hash|
      new_hash[program] = type_hash
    end
  end

  return new_hash
end
