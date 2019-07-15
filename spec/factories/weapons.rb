FactoryBot.define do
  factory :weapon do
    name {FFaker::Lorem.paragraph}
    description {FFaker::Lorem.paragraph}
    power_base {FFaker::Random.rand(1..99)}
    power_step {FFaker::Random.rand(1..99)}
    level {FFaker::Random.rand(1..99)}
  end
end


