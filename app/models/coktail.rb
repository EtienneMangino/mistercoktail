class Coktail < ActiveRecord::Base
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, :description, presence: true
end
