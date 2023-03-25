
const HDWalletProvider = require("@truffle/hdwallet-provider");
const fs = require('fs');
const mnemonicPhrase = fs.readFileSync(".secret").toString().trim();
const infuraProjectID = fs.readFileSync(".infura").toString().trim();

module.exports = {

  networks: {

    ganache: {
     host: "127.0.0.1",     // Localhost (default: none)
     port: 8545,            // Standard Ethereum port (default: none)
     network_id: "*",       // Any network (default: none)
    },
    goerli: {
      // must be a thunk, otherwise truffle commands may hang in CI
      provider: () =>
          new HDWalletProvider({
          mnemonic: {
              phrase: mnemonicPhrase
          },
          providerOrUrl: "https://goerli.infura.io/v3/" + infuraProjectID
          }),
      network_id: '5',
      },

  },
  
  // Set default mocha options here, use special reporters, etc.
  mocha: {
    // timeout: 100000
  },
