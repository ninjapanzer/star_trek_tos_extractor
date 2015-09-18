class Cast < ActiveRecord::Base
  belongs_to :episode
  validates :episode_id, uniqueness: {scope: [:full_name, :character_name]}

  def by_character_name(character, columns=nil)
    columns = ["episodes.number", "episodes.season", :character_name, :full_name, "episodes.title"] unless columns
    Cast.includes(:episode)
        .where('character_name LIKE ?', "%#{character}%")
        .pluck(*columns)
  end
end
