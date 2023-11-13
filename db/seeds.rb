# frozen_string_literal: true

Pet.delete_all

100.times do
  Pet.create name: Faker::Name.first_name
end
