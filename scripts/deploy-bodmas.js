const hre = require('hardhat');

async function main() {

    // get the Bodmas contract
    const Bodmas = await hre.ethers.getContractFactory('Bodmas');
    const bodmas = await Bodmas.deploy();

    // deployed the bodmas contract
    await bodmas.deployed()

    a = 10;
    b = 10;
    c = 10;

    console.log(
        'a + b = '
         + await bodmas.add([a, b])
    );
    console.log(
        'a + b + c = '
         + await bodmas.add([a, b, c])
    );

    console.log(
        'a - b = '
         + await bodmas.sub([a, b])
    );
    console.log(
        'a - b - c = '
         + await bodmas.sub([a, b, c])
    );

    console.log(
        'a * b = '
         + await bodmas.mul([a, b])
    );
    console.log(
        'a * b * c = '
         + await bodmas.mul([a, b, c])
    );

    console.log(
        'a / b = '
         + await bodmas.div([a, b])
    );
    console.log(
        'a / b / c = '
         + await bodmas.div([a, b, c])
    );
}

// catch deploy errors
main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
})