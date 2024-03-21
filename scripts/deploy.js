const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();

  console.log("Deploying contracts with the account:", deployer.address);

  console.log("Account balance:", (await hre.ethers.provider.getBalance(deployer.address)).toString());


  const token = await hre.ethers.deployContract("USDCToken");

  await token.waitForDeployment();

  console.log("Token address:", token.address);
}

main()