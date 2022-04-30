# micro-solidity

[![Node.js CI](https://github.com/Akagi201/micro-solidity/actions/workflows/ci.yml/badge.svg)](https://github.com/Akagi201/micro-solidity/actions/workflows/ci.yml)

Solidity boilerplate code

## Features

- [ ] [ESM](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules) - modern JavaScript module system
- [x] [ESLint](https://github.com/eslint/eslint) - static linting
- [ ] [Jest](https://jestjs.io/) - unit testing
- [x] [Prettier](https://prettier.io/) - code formatter
- [x] [EditorConfig](https://editorconfig.org/) - file format
- [x] [Volta](https://volta.sh/) - Node.js version manager
- [x] [GitHub Actions](https://github.com/features/actions) - GitHub CI/CD
- [x] [Hardhat](https://hardhat.org/) - Solidity development enviroment
- [x] [Ethers.js](https://ethers.org/) - Ethereum RPC Javascript client
- [x] [Solhint](https://github.com/protofire/solhint) - linting utility for Solidity code

## Etherscan verification

To try out Etherscan verification, you first need to deploy a contract to an Ethereum network that's supported by Etherscan, such as Ropsten.

In this project, copy the .env.example file to a file named .env, and then edit it to fill in the details. Enter your Etherscan API key, your Ropsten node URL (eg from Alchemy), and the private key of the account which will send the deployment transaction. With a valid .env file in place, first deploy your contract:

```sh
hardhat run --network ropsten scripts/deploy.ts
```

Then, copy the deployment address and paste it in to replace `DEPLOYED_CONTRACT_ADDRESS` in this command:

```sh
npx hardhat verify --network ropsten DEPLOYED_CONTRACT_ADDRESS "Hello, Hardhat!"
```

## Performance optimizations

For faster runs of your tests and scripts, consider skipping ts-node's type checking by setting the environment variable `TS_NODE_TRANSPILE_ONLY` to `1` in hardhat's environment. For more details see [the documentation](https://hardhat.org/guides/typescript.html#performance-optimizations).
