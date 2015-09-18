class AddCastTable < ActiveRecord::Migration

  def up
    create_table :casts do |t|
      t.string  :full_name
      t.string  :character_name
      t.integer :episode_id
    end
  end

  def down
    drop_table :casts
  end

end
