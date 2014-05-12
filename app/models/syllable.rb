class Syllable < ActiveRecord::Base
  has_many :word_structures
  has_many :words, through: :word_structures
end
