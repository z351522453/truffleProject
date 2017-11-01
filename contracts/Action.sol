pragma solidity ^0.4.11;
import "./DataSpecs.sol";

contract Action is DataSpecs {
    function SetData(uint _data) {
        sdata = _data;
    }    

    function () {  // fallback
        revert();
    }    
}