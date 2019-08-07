class Album < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :album_artists
  has_many :artists, :through => :album_artists

  validates :name, presence: true
  validates_length_of :name, maximum: 100

  # scope :rock, -> ( where(genre: "Rock"))
  # The scope method runs when the class is loaded that dynamically creates a method on the class. In this case, scope(:rock) creates an Album.rock method that returns all rock albums.

  before_save(:titleize_album)

  private
  def titleize_album
    self.name = self.name.titleize
  end
end
