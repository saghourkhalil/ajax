require 'faker'

10.times do 
    email = Email.create(object:Faker::Lorem.characters(7), body:Faker::Lorem.words(4))
end

