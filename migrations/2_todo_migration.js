const Todo = artifacts.require("ToDo");

module.exports = function (deployer) {
  deployer.deploy(Todo);
};