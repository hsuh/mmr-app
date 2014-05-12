class WordStructure < ActiveRecord::Base
  belongs_to :word
  belongs_to :syllable
end
