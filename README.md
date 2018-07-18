
## Getting started

JSON-RPC node should be running and configured in `truffle.js`.

* Install ganache-cli

npm install -g ganache-cli

# Using ganache-cli
ganache-cli


For more information about it see [ganache-cli](https://github.com/trufflesuite/ganache-cli)

## Run the web server

* Node 8 LTS
* You can use yarn or npm

```bash
# Install dependencies
yarn

# Build Sol contracts into the Ethereum node
yarn contracts:build

# Build deploy contracts into node
yarn contracts:migrate

# Run the web server
yarn web
```

