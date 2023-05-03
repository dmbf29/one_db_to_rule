namespace :yelp_mvp do
  desc "seeding DB for restaurants"
  task seed: :environment do
    puts "Cleaning restaurants..."
    YelpMvRestaurant.destroy_all

    puts "Creating restaurants..."

    15.times do
      restaurant = YelpMvRestaurant.create!(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_address,
        phone_number: Faker::PhoneNumber.phone_number,
        category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
      )
      YelpMvReview.create!(
        content: '',
        rating: rand(3..5),
        restaurant: restaurant
      )
    end

    puts "... made #{YelpMvRestaurant.count} restaurants"

  end

end
