class Dose < ActiveRecord::Base
  belongs_to :coktail
  belongs_to :ingredient

  validates :amount, presence: true
  validates :amount, :numericality => { :greater_than_or_equal_to => 1}
end
