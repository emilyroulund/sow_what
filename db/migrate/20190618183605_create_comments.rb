class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :plant, foreign_key: true
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
