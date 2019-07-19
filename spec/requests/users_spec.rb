require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "retorna sucesso na requisição http" do
      get users_path
      expect(response).to have_http_status(200)
    end

    it "verifica se o title estar presente" do
      users = create_list(:user, 3)
      get users_path
      users.each do |user|
        expect(response.body).to include(user.title)
      end
    end
  end

  describe "POST /users"do
    context "quando tem parametos válidos" do
      it "cria um user com os atributos corretos" do
        user_attributes = FactoryBot.attributes_for(:user)
        post users_path, params: { user: user_attributes}
        expect(User.last).to have_attributes(user_attributes)
      end
    end

    context "quando não tem parametros válidos" do
      it "does not reate user" do
        expect{
          post users_path, params: { user: {kind: '', name: '', level: ''}}
        }.to_not change(User, :count)
      end
    end
  end
end
