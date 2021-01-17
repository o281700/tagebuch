FactoryBot.define do
  factory :user do
    nickname { 'TestUser' }
    email { 'test@user.com' }
    password { '1q2w3e4r' }
    password_confirmation { password }
  end
end
