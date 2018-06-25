FactoryBot.define do
  factory :user do
  	email {FFaker::Internet.email}
  	password 'Password1'
  	encrypted_password 'Password1'
  end
end
