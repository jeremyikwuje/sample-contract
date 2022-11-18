const hre = require('hardhat')

async function main() {
    const test = await hre.ethers.getContractFactory('Add');
    const addRun = await test.deploy();

    await addRun.deployed();

    await addRun.set(10, 10);

    console.log('Sum of state variable is ' + await addRun.get())
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});