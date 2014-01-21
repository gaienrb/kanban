namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    60.times do |n|
      name = Faker::Name.name
      Project.create!(name: name)
    end  
  end
end
