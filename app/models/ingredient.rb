class Ingredient < ActiveRecord::Base
  has_many :doses, dependent: :destroy
  has_many :coktails, through: :doses

  validates :name, presence: true
end
