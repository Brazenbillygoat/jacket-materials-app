require 'faker'

Jacket.destroy_all

10.times{ Jacket.create(name: Faker::DcComics.heroine, made_in: Faker::Address.country)}