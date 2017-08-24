FactoryGirl.define do
  factory :quote do
    author Faker::Book.author
    content Faker::ChuckNorris.fact
  end
end
