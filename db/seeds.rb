class Seed

  def self.begin
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    20.times do |i|
      park = Park.create!(
        name: Faker::Lorem.words(number: 3).join(","),
        description: Faker::Lorem.words(number: 25).join(","),
        location: Faker::Lorem.words(number: 5).join(",")
      )
      puts "Park #{i}: name is #{park.name}, description is #{park.description} and location is #{park.location}."
    end
  end
end

Seed.begin
