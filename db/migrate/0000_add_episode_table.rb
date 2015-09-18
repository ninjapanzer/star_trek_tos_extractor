class AddEpisodeTable < ActiveRecord::Migration

  def up
    create_table :episodes do |t|
      t.string  :title
      t.integer :season
      t.integer :number
    end
  end

  def down
    drop_table :episodes
  end

end
