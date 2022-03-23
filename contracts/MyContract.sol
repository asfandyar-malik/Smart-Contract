pragma solidity 0.8.13;

contract MyContract { 
    string public value = "Initial Value";
    
    function get() public view returns(string memory) { 
        return value;
    }

    function set(string memory _value) public {
        value = _value;
    }
}