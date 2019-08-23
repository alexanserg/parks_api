class Park < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  before_save(:titleize_park)

  private
    def titleize_park
      self.name = self.name.titleize
    end
end
