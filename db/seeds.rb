# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


words = [{
  syllables:[
    {character: 'က', ipa: 'kə'},
    {character: "ေလး", ipa: 'léi'}],
  soundfile: 'kəléi-baby.ogg',
  meaning: 'baby',
  imagefile: 'kəléi-baby.ogg'
}]

words.each do |w|
  word           = Word.new()
  word.soundfile = w[:soundfile]
  word.meaning   = w[:meaning]
  word.image     = w[:imagefile]
  syllables      = w[:syllables]
  word.save

  puts word.inspect

  syllables.each_with_index do |s, i|
    char = s[:character]
    ipa  = s[:ipa]
    syl  = Syllable.find_by_character_and_ipa(char, ipa)
    if syl == nil
      syl = Syllable.create!([character: char, ipa: ipa])
    end

    puts syl.inspect
    puts word.word_structures.inspect
    word.word_structures.create!(syllable_id: syl.first.id, syllable_position: i)
  end
end
