class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.text :address
      t.text :google_map

      t.timestamps
    end
  end
end
