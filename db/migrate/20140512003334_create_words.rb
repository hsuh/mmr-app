class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :meaning
      t.string :soundfile
      t.string :image

      t.timestamps
    end
  end
end
