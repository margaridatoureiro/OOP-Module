# frozen_string_literal: true

require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    # 1. Get all recipes from cookbook
    recipes = @cookbook.all
    # 2. Give them to the view to display them
    @view.display_list(recipes)
  end

  def create
    # 1. Ask the user for a recipe name
    name = @view.ask_user_for_name
    # 2. Ask the user for a recipe description
    description = @view.ask_user_for_description
    # 3. Create an instance of Recipe
    recipe = Recipe.new(name, description)
    # 4. Give the recipe to the cookbook
    @cookbook.add_recipe(recipe)
  end

  def destroy
    # 1. Show the use all the recipes
    list
    # 2. Ask the user for the recipe index
    index = @view.ask_user_for_index
    # 3. Give the index to the cookbook for it to remove it
    @cookbook.remove_recipe(index)
  end
end
