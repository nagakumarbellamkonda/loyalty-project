var ConvertLib = artifacts.require('./ConvertLib.sol');
var LoyaltyToken = artifacts.require('./LoyaltyTokenContract.sol');

module.exports = function(deployer) {
	deployer.deploy(ConvertLib);
	deployer.link(ConvertLib, LoyaltyToken);
	deployer.deploy(LoyaltyToken);
};
