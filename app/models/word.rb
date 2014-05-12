class Word < ActiveRecord::Base
  has_many :word_structures
  has_many :syllables, through: :word_structures
end
