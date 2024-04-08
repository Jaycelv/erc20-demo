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
      accounts: ['a52fc008b14875cbadcc46e619cf2382f60a3c0f42786691151bda9f2ba26aee']
    },
    base: {
      url: `https://sepolia.base.org`,
      accounts: ['a52fc008b14875cbadcc46e619cf2382f60a3c0f42786691151bda9f2ba26aee']
    },
  },
};