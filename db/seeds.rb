# frozen_string_literal: true

Pet.delete_all

20.times do
  Pet.create name: Faker::Creature::Animal.name
end
