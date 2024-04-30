require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:number_of_dice/:sidescount") do
  @rolls = []

  @num_of_rolls = params.fetch(:number_of_dice).to_i
  @num_of_sides = params.fetch(:sidescount).to_i

  @num_of_rolls.times do
    die = rand(1..@num_of_sides)
    @rolls.push(die)
  end

  erb(:flexible)
end
