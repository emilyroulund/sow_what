class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :sunlight
      t.string :water
      t.string :soil
      t.string :humidity
      t.string :temperature
      t.string :climate
      t.string :pot_size
      t.text :description
      t.string :img_url

      t.timestamps
    end
  end
end
