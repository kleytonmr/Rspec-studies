require 'rails_helper'

RSpec.describe Weapon, type: :model do
  context '#title' do
    it 'Retorna o nome da arma' do
      weapon = build(:weapon)
      expect(weapon.title).to eq("#{weapon.name} ##{weapon.level}")
    end
  end

  context '#current_power' do
    it 'Retorna o current_power' do
      weapon = build(:weapon)
      expect(weapon.current_power).to eq(weapon.current_power)
    end
  end

  context 'validações' do
    it 'é invalido se o level for menor que 0' do
      weapon = build(:weapon, level: 0)
      expect(weapon).to_not be_valid
    end

    it 'é invalido se o level for nil' do
      weapon = build(:weapon, level: nil)
      expect(weapon).to_not be_valid
    end
  end
end
