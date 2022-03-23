pragma solidity 0.8.13;

contract BuyTokenContract { 

   mapping(address => uint256) public balances;
   address payable wallet;

   event Purchase(
      address _buyer,
      uint256 _amount
   );

   constructor(address payable _wallet) public { 
      wallet = _wallet;
   }

   fallback() external payable {
      buyToken();
   }

   function buyToken() public payable {
      // buy a token
      balances[msg.sender] += 1;
      // send ether to a wallet
      wallet.transfer(msg.value);
      emit Purchase(msg.sender, 1); 
   }
}