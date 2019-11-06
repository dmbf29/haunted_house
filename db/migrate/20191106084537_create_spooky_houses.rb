class CreateSpookyHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :spooky_houses do |t|
      t.string :name
      t.string :banner_url

      t.timestamps
    end
  end
end
