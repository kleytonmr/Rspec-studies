require 'rails_helper'

RSpec.describe User, type: :model do
  it 'é invalido se o level não estiver entre 1 e 99' do
    user = build(:user, level: FFaker::Random.rand(100..9999))
    expect(user).to_not be_valid
  end

  it 'retorna o titulo correto do herói' do
    nickname = FFaker::Name.first_name
    kind = %i[knight wizard].sample
    level = FFaker::Random.rand(1..99)

    user = User.create(nickname: nickname, kind: kind, level: level)
    expect(user.title).to eq("#{kind} #{nickname} ##{level}")
   end
end




