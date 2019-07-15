class Weapon < ApplicationRecord
  validates :level, numericality: { greater_than: 0 }, allow_nil: false, presence: true

  def current_power
    ((level - 1) * power_step) + power_base
  end

  def title
    "#{name} ##{level}"
  end
end
