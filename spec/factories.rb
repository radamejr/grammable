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
    picture { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'picture.png').to_s, 'image/png') }

    association :user
  end
end