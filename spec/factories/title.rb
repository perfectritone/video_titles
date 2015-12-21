FactoryGirl.define do
  factory :title, class: Persisted::Title do
    title 'Holy Mountain'

    association :video, factory: :video, strategy: :build
  end
end

