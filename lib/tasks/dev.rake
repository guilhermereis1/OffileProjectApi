namespace :dev do
  desc "Populate DB Client"
  task setup: :environment do
    5.times do
      Client.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone
      )
    end
  end
end
