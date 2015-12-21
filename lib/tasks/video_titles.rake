Dir[Rails.root.join('app/**/*.rb')].each { |f| require f }

desc "Display the title of the video"
task :video_titles, [:id] => [:environment] do |t, args|
  video = Video.new(id: args[:id], source: Vimeo)
  title = video.get_title

  puts title
end
