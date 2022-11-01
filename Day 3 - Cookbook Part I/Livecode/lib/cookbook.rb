# frozen_string_literal: true

require 'csv'
require_relative 'recipe'

class Cookbook
  def initialize(csv_file_path)
    @recipes = [] # array of `Recipe` instances
    @csv_file_path = csv_file_path
    load_csv
  end

  def all
    @recipes
  end

  # recipe is a `Recipe` instance
  def add_recipe(recipe)
    @recipes << recipe
    save_to_csv
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    save_to_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path) do |row|
      # row is an array
      name = row[0]
      description = row[1]
      @recipes << Recipe.new(name, description)
    end
  end

  def save_to_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
