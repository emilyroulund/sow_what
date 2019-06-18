class CreatePlantLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_likes do |t|
      t.references :user, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
