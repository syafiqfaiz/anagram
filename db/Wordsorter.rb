require 'active_record'
require_relative '../app/models/word'
require_relative '../config/environment'


all_word = Word.all
char = []
all_word.each do |w|
    char = w.word.split("")
    w.sorted = char.sort.join("").downcase unless w.word.length < 2
    w.save
  end

  t = Word.first(20)

  t.each do |s|
    p s.word
    puts s.sorted
  end
