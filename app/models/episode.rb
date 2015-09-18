class Episode < ActiveRecord::Base
  has_many :cast
  validates :number, uniqueness: {scope: [:title, :season]}
end
