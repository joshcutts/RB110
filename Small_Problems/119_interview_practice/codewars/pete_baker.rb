=begin
Pete likes to bake some cakes. He has some recipes and ingredients.

Unfortunately he is not good in maths. Can you help him to find out, how many cakes he could bake 
considering his recipes?

Write a function cakes(), which takes the recipe (object) and the available ingredients 
(also an object)

and returns the maximum number of cakes Pete can bake (integer). For simplicity there are no 
units for the amounts

(e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients that are not present 
in the objects, can be considered as 0.

PROBLEM:
input: 2 hashes
1) recipe
2) ingredients
output: integer, number of cakes that can be made with given ingredients per the given recipe


EXAMPLES:

p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0
p cakes({"eggs"=>4, "flour"=>400},{}) == 0
p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1

DATA STRUCTURE:


ALGORITHM:
- create an empty array to hold # of cakes that can be made per ingredient
- iterate through the recipe hash
  - if the ingredient hash has the ingredient
    - divide the ingredient amount (value) by recipe amount (value) & add this to the array
  - otherwise return 0
- return the minimum # of cakes that can be made in the array


=end

def cakes(recipe, ingredients)
  num_cakes = []
  recipe.each do |ingredient, amount|
    if ingredients.keys.include?(ingredient)
      num_cakes << ingredients[ingredient] / recipe[ingredient]
    else
      return 0
    end
  end
  num_cakes.min
end




p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0
p cakes({"eggs"=>4, "flour"=>400},{}) == 0
p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1