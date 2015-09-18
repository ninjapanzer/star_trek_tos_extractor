class AddDirectorAndWritersToEpisode < ActiveRecord::Migration

  def change
    change_table :episodes do |t|
      t.string :director
      t.string :writers
    end
  end

end
