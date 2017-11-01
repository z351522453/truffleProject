pragma solidity ^0.4.11;
import "./DataSpecs.sol";

contract DataInterface is DataSpecs {
    function DataInterface() {
        owner = msg.sender;
    }

    function SetAction(address _action) {
        require(msg.sender == owner);
        action = _action;
    }

    function () {  // fallback
        if (!action.delegatecall(msg.data)) {
            revert();
        }
    }    
}
