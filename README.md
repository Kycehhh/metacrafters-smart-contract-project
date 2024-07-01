# RecipeManager Smart Contract

## Description

The RecipeManager smart contract allows users to manage recipes securely on the Ethereum blockchain. It provides functionalities for adding, updating, and removing recipes, with access control to ensure only the contract owner can perform these actions.

## Getting Started

### Installing

Clone the repository:
```bash
git clone https://github.com/qeewpi/metacrafters-smart-contract-project
```

### Executing program

1. Compile the smart contract using your preferred development environment (e.g., Remix, Hardhat, Truffle).
2. Deploy the smart contract to a local blockchain (e.g., Ganache) or a test network (e.g., Ropsten).

### Example Workflow

#### Adding a Recipe

```solidity
// Example of adding a recipe
contract.addRecipe("Chocolate Cake", ["Chocolate", "Flour", "Sugar", "Eggs", "Butter"], ["Mix ingredients", "Bake in oven", "Cool and serve"]);
```

#### Updating a Recipe

```solidity
// Example of updating a recipe
contract.updateRecipe(1, "Dark Chocolate Cake", ["Dark Chocolate", "Flour", "Sugar", "Eggs", "Butter"], ["Mix ingredients", "Bake in preheated oven", "Cool and serve"]);
```

#### Removing a Recipe

```solidity
// Example of removing a recipe
contract.removeRecipe(2);
```

## Help

For any issues or questions, please contact [asrmanalo@mymail.mapua.edu.ph].

## Authors

- [Ashley Manalo]
- [asrmanalo@mymail.mapua.edu.ph]

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
