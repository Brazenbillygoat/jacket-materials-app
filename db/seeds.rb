require 'faker'

Jacket.destroy_all
Material.destroy_all

10.times{ 
    Jacket.create(name: Faker::Commerce.product_name, made_in: Faker::Address.country)
    Material.create(name: Faker::Commerce.material, color: Faker::Commerce.color)
}
