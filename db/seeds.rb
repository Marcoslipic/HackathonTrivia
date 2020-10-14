# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'json'
require 'pry'

Trivium.destroy_all

baseURL = 'https://opentdb.com/api.php?amount=10&category=18'
data = RestClient.get(baseURL)
parsed_data = JSON.parse(data)

parsed_data["results"].map do |info|
    Trivium.create(
        category: info["category"],
        question: info["question"],
        correct_answer: info["correct_answer"],
        incorrect_answers: info["incorrect_answers"]
        )

end


