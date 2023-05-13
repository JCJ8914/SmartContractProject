// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleContract {
    uint public value = 0;

    function updateValue(uint _newValue) external {
        require(_newValue > value, "New value must be greater than the current value");
        
        if (_newValue == 42) {
            revert("New value cannot be 42");
        }

        value = _newValue;

        assert(value > 10);
    }
}
