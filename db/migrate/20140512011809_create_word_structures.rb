class CreateWordStructures < ActiveRecord::Migration
  def change
    create_table :word_structures do |t|
      t.belongs_to :word, index: true
      t.belongs_to :syllable, index: true
      t.integer :syllable_position

      t.timestamps
    end
  end
end
