FactoryBot.define do
  factory :blog do
    title { 'BlogTitle' }
    article { 'BlogArticle' }
    association :user
  end
end
