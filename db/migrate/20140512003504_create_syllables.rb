class CreateSyllables < ActiveRecord::Migration
  def change
    create_table :syllables do |t|
      t.string :character
      t.string :ipa
      t.string :soundfile

      t.timestamps
    end
  end
end
