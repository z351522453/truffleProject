var DataInterface = artifacts.require("./DataInterface.sol");
var Action = artifacts.require("./Action.sol");

module.exports = function(deployer) {
  deployer.deploy(DataInterface);
  deployer.deploy(Action);
};
