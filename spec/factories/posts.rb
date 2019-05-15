FactoryBot.define do
  factory :post do
    title { "MyString" }
    content { "MyText" }
    opened { false }
    user { nil }
  end
end
