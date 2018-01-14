def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |lang, type|
      if new_hash.has_key?(lang)
        new_hash[lang][:style].push(style)
      else
        type.each do |key, value|
          new_hash[lang] = {}
          new_hash[lang][key] = value
          new_hash[lang][:style] = [style]
        end
      end
    end
  end
  puts new_hash
  new_hash
end

=begin
new_hash = {}
languages.each do |style, lang|
  lang.each do |lang1, type|
    puts lang1
    if !new_hash.has_key?(lang1)
      puts lang1
      new_hash[lang1] = type, {style: [style]}
    else
    end
  end
end
new_hash
=end
