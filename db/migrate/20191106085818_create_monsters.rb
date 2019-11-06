class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :species
      t.string :catch_phrase
      t.string :image_url
      t.references :spooky_house, foreign_key: true

      t.timestamps
    end
  end
end
