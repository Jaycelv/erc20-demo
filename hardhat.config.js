require("@nomicfoundation/hardhat-toolbox");


/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.20",
  paths: {
    sources: "./contracts"
  },
  networks: {
    optimism: {
      url: `https://public.stackup.sh/api/v1/node/optimism-sepolia`,
      accounts: {
        mnemonic: "case garage era option frame radio devote inside blame small laugh assault"
      }
    },
    base: {
      url: `https://sepolia.base.org`,
      accounts: {
        mnemonic: "case garage era option frame radio devote inside blame small laugh assault"
      }
    },
  },
};