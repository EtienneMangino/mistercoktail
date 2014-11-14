class Coktail < ActiveRecord::Base
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, :description, presence: true

  has_attached_file :picture,
    styles: { medium: "300x300>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end
