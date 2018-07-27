class Heroine < ApplicationRecord
belongs_to :power

validates :name, uniqueness: true

def heroine_power
  self.power.name
end

end
