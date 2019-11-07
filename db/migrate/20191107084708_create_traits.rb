class CreateTraits < ActiveRecord::Migration[5.2]
  def change
    create_table :traits do |t|
      t.references :monster, foreign_key: true
      t.references :weakness, foreign_key: true

      t.timestamps
    end
  end
end
