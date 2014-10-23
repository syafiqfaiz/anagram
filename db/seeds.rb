file = File.open ("words")

file.each do |w|
  Word.create(word: w.chomp)
end

