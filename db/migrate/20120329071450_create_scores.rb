class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :club_id
      t.integer :user_id
      t.datetime :date
      t.string :range
      t.text :weather
      t.integer :score
      t.text :comments
      t.string :target_photo_uid
      t.string :target_photo_name

      t.timestamps
    end
  end
end
