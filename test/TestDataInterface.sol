pragma solidity ^0.4.11;
import "truffle/Assert.sol";
import "../contracts/DataInterface.sol";
import "../contracts/Action.sol";

contract TestDataInterface {
    function testFallback () {
        DataInterface di = new DataInterface();
        Action action = new Action();
        di.SetAction(address(action));
        address addr = address(di);
        bytes4 methodId = bytes4(keccak256("SetData(uint256)"));
        if (!addr.call(methodId, 50)) {
            revert();
        }
        Assert.equal(di.sdata(), 50, "sdata should be 50.");
    }
}