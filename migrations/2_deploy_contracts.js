var HoneyPot = artifacts.require("HoneyPot");
var HoneyPotCollect = artifacts.require("HoneyPotCollect");

module.exports = function(deployer) {
  deployer.deploy(HoneyPot);
  deployer.link(HoneyPot, HoneyPotCollect);
  deployer.deploy(HoneyPotCollect);
};