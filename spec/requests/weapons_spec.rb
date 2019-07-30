require 'rails_helper'

RSpec.describe "Weapons", type: :request do
  describe "GET /weapons" do
    it "retorna sucesso na requisição http" do
      get weapons_path
      expect(response).to have_http_status(200)
    end

    it "verifica se o title estar presente" do
      weapons = create_list(:weapon, 4)
      get weapons_path
      weapons.each do |weapon|
        expect(response.body).to include(weapon.title)
      end
    end

    it "verifica se title e o current power  estão sendo exibidos" do
      weapon = create(:weapon)
      get weapons_path

      expect(response.body).to have_selector('li', text: weapon.title)
      expect(response.body).to have_selector('li', text: weapon.current_power)
      expect(response.body).to have_selector('a', text: weapon.title)
    end

    it "verifica se o nome, current power, power base, power base, title e level são exibidos" do
      weapon = create(:weapon)
      get weapon_path(weapon)

      expect(response.body).to have_selector('p', text: "Name: #{weapon.name}")
      expect(response.body).to have_selector('p', text: "Power base: #{weapon.power_base}")
      expect(response.body).to have_selector('p', text: "Power step: #{weapon.power_step}")
      expect(response.body).to have_selector('p', text: "Title: #{weapon.title}")
      expect(response.body).to have_selector('p', text: "Level: #{weapon.level}")
    end
  end

  describe "POST /weapons"do
    context "quando tem parametos válidos" do
      it "cria uma weapon com os atributos corretos" do
        weapon_attributes = FactoryBot.attributes_for(:weapon)
        post weapons_path, params: { weapons: weapon_attributes}
        expect(Weapon.last).to have_attributes(weapon_attributes)
      end
    end

    context "quando não tem parametros válidos" do
      it "não cria weapon" do
        expect{
          post weapons_path, params: { weapons: {name: '', description: '', power_base: '', power_step: '', level: ''}}
        }.to_not change(Weapon, :count)
      end
    end
  end
end
