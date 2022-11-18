const hre = require('hardhat')

async function main() {
    const test = await hre.ethers.getContractFactory('Test');
    const testRun = await test.deploy();

    await testRun.deployed();

    await testRun.set(10, 10);

    console.log('Sum of state variable is ' + await testRun.get())
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});