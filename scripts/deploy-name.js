// require("@nomiclabs/hardhat-ethers")
// const { ethers } = require("hardhat")

// async function deploy() {
//   const MyName = await ethers.getContract()
//   const name = await MyName.deploy()
//   await name.deployed()

//   return name
// }

// async function printName(name) {
//   console.log(await name.name())
// }

// deploy().then(printName)

const hre = require("hardhat");

async function main() {
  const MyName = await hre.ethers.getContractFactory("MyName");
  const name = await MyName.deploy();

  await name.deployed();

  console.log(await name.name());
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
