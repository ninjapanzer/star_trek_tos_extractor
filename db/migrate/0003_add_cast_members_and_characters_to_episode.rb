class AddCastMembersAndCharactersToEpisode < ActiveRecord::Migration

  def change
    change_table :episodes do |t|
      t.text :characters
      t.text :members
      t.text :member_characters
    end
  end

end
