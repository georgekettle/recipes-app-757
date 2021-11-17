# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.destroy_all if Rails.env == 'development'

recipe = Recipe.create(
            name: 'Mexican chicken and rice casserole',
            rating: 4,
            photo: 'https://images.kitchenstories.io/recipeImages/16_01_98_Final/16_01_98_Final-large-landscape-150.jpg',
            difficulty: 'medium')

puts "creating steps:"
    Step.create!(
        description: 'Dice chicken breasts into large pieces. Mince garlic and cilantro, cut bell peppers into strips, and finely chop scallions.',
        ingredients: '400 g chicken breast 3 cloves garlic 20 g cilantro 1 red bell pepper 1 green bell pepper 4 scallions',
        photo: 'https://images.kitchenstories.io/recipeStepImages/16_01_98_Steps01/16_01_98_Steps01-large-landscape-150.jpg',
        recipe: recipe
    )

    Step.create!(
        description: 'Heat half of the vegetable oil in a large skillet over high heat. Add chicken pieces and sauté for approx. 5 – 7 min. until golden. Transfer to a plate and set aside.',
        ingredients: '1 tbsp vegetable oil',
        photo: 'https://images.kitchenstories.io/recipeStepImages/16_01_98_Steps02/16_01_98_Steps02-large-landscape-150.jpg',
        recipe: recipe
    )

    Step.create!(
        description: 'Heat other half of vegetable oil and add scallions and garlic. Sauté until soft and fragrant for approx 1 - 2 min. Then, add bell pepper. Continue to sauté and add corn, chicken stock, and enchilada sauce. Season with salt and pepper.',
        ingredients: '1 tbsp vegetable oil 275 g corn (canned or frozen) 475 ml chicken stock 680 g enchilada sauce salt pepper',
        photo: 'https://images.kitchenstories.io/recipeStepImages/16_01_98_Steps03/16_01_98_Steps03-large-landscape-150.jpg',
        recipe: recipe
    )
puts "finished creating steps"