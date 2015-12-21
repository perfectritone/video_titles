FactoryGirl.define do
  factory :video, class: Persisted::Video do
    external_id "2904893849"
    source Vimeo

    factory :video_with_title do
      after(:build) do |video, evaluator|
        build(:title, video: video)
      end
    end
  end
end
