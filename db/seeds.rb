require 'faker'

10.times do 
    email = Email.create(object:Faker::HarryPotter.character, body:Faker::HarryPotter.quote)
end

