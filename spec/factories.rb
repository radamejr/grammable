FactoryBot.define do
  factory :user do
    sequence :username do |n|
       "dummyuser#{n}" 
    end

    sequence :email do |n|
      "dummyemail#{n}@gmail.com"
    end

    password { "dummyPass" }
    password_confirmation { "dummyPass" }
  end

  factory :gram do
    message { "hello" }
    association :user
  end
end