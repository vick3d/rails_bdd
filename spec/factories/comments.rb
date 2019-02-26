FactoryBot.define do
  factory :comment do
    commenter { "MyString" }
    body { "MyText" }
    email { "MyEmail@email.com"}
  end
end
