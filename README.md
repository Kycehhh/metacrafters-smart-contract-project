# SmartContract-ErrorHandling

A Solidity smart contract demonstrating the use of `require()`, `assert()`, and `revert()` statements for error handling.

## Description

This project includes a smart contract written in Solidity that handles common error scenarios using `require()`, `assert()`, and `revert()`. The contract, `ErrorHandling.sol`, provides basic functionalities to deposit and withdraw funds, reset the balance, and intentionally trigger an error. This serves as a practical example of error handling in Ethereum smart contracts.

## Getting Started

### Installing

To get started with this project, you can clone the repository from GitHub:

```sh
git clone https://github.com/yourusername/SmartContract-ErrorHandling.git
```

No additional modifications are needed to run the smart contract.

### Executing program

You can deploy and interact with the smart contract using Remix IDE:

1. **Open Remix IDE**: Go to [Remix IDE](https://remix.ethereum.org/).
2. **Create a new file**: Name it `ErrorHandling.sol`.
3. **Copy and paste the code**: Copy the code from `ErrorHandling.sol` in this repository and paste it into your new file in Remix.
4. **Compile the contract**: Use the Solidity compiler in Remix to compile the contract.
5. **Deploy the contract**: Deploy the contract to your preferred Ethereum network using the Remix deployment tab.

To interact with the contract, use the provided functions:

```solidity
// Deposit funds
deposit(uint amount)

// Withdraw funds
withdraw(uint amount)

// Reset balance
resetBalance()

// Force an error
forceError()
```

## Help

For any issues or common problems, refer to the Remix documentation or check for common Solidity errors.

If you need additional help, you can use the following command in Remix to get more information:

```
remix:help
```

## Authors

Contributors names and contact info

Ashley Manalo
[@qeewpi](https://github.com/qeewpi)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
