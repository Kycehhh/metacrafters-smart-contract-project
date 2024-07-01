// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract RecipeManager {
    struct Recipe {
        string name;
        string[] ingredients;
        string[] steps;
        bool exists;
    }

    mapping(uint => Recipe) private recipes;
    uint private nextRecipeId;
    address private owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }

    constructor(address _owner) {
        require(_owner != address(0), "Owner address cannot be the zero address");
        owner = _owner;
        nextRecipeId = 1; // Start recipe IDs from 1
    }

    // Function to add a new recipe
    function addRecipe(string memory name, string[] memory ingredients, string[] memory steps) public {
        // Ensure only the contract owner can add new recipes
        if (msg.sender != owner) {
            revert("Only the owner can add new recipes");
        }
    
        // Check that all required parameters are provided
        require(bytes(name).length > 0, "Recipe name must not be empty");
        require(ingredients.length > 0, "Ingredients list must not be empty");
        require(steps.length > 0, "Steps list must not be empty");
    
        // Store the new recipe in the recipes mapping
        recipes[nextRecipeId] = Recipe(name, ingredients, steps, true);
        nextRecipeId++;
    }

    // Function to get a recipe by its ID
    function getRecipe(uint recipeId) public view returns (string memory, string[] memory, string[] memory) {
        require(recipeId > 0 && recipeId < nextRecipeId, "Recipe ID is invalid");

        Recipe storage recipe = recipes[recipeId];
        require(recipe.exists, "Recipe does not exist");

        return (recipe.name, recipe.ingredients, recipe.steps);
    }

    // Function to update a recipe
    function updateRecipe(uint recipeId, string memory name, string[] memory ingredients, string[] memory steps) public onlyOwner {
        require(recipeId > 0 && recipeId < nextRecipeId, "Recipe ID is invalid");
        Recipe storage recipe = recipes[recipeId];
        require(recipe.exists, "Recipe does not exist");

        require(bytes(name).length > 0, "Recipe name must not be empty");
        require(ingredients.length > 0, "Ingredients list must not be empty");
        require(steps.length > 0, "Steps list must not be empty");

        recipe.name = name;
        recipe.ingredients = ingredients;
        recipe.steps = steps;
    }

    // Function to remove a recipe
    function removeRecipe(uint recipeId) public onlyOwner {
        require(recipeId > 0 && recipeId < nextRecipeId, "Recipe ID is invalid");
        Recipe storage recipe = recipes[recipeId];
        require(recipe.exists, "Recipe does not exist");

        delete recipes[recipeId];
    }

    // Function to check contract invariants (example of assert)
    function checkInvariant() public view {
        assert(owner != address(0));
    }

    // Function to transfer ownership of the contract
    function transferOwnership(address newOwner) public onlyOwner {
        if (newOwner == address(0)) {
            revert("New owner cannot be the zero address");
        }
        owner = newOwner;
    }
}
