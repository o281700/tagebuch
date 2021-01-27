FactoryBot.define do
  factory :comment do
    text { 'TestComment' }
    association :user
    association :blog
  end
end
