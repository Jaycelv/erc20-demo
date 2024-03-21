require("@nomicfoundation/hardhat-toolbox");


/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.20",
  paths: {
    sources: "./contracts"
  },
  networks: {
    optimism: {
      url: `https://sepolia.optimism.io`,
      accounts: {
        mnemonic: "jelly infant furnace decrease dolphin member quantum hawk segment coral witness someone"
      }
    },
    base: {
      url: `https://sepolia.base.org`,
      accounts: {
        mnemonic: "jelly infant furnace decrease dolphin member quantum hawk segment coral witness someone"
      }
    },
  },
};