pragma solidity ^0.4.8;

import "./ConvertLib.sol";
import "./EIP20Interface.sol";

contract LoyaltyTokenContract is EIP20Interface {
	mapping (address => uint) balances;
	mapping (address => mapping (address => uint256)) allowed;
	
	///	Default Constructor. we can instead change it to constructor LoyaltyTokenContract as well
	function LoyaltyTokenContract() {
		balances[tx.origin] = 10000;
	}

	///	The below method will be used to transfer to a particular address
	function transfer(address receiver, uint amount) public returns(bool sufficient) {
		if (balances[msg.sender] < amount) return false;
		balances[msg.sender] -= amount;
		balances[receiver] += amount;
		Transfer(msg.sender, receiver, amount);
		return true;
	}

	///	The below method will be used to retrieve the balance in Eth
	function getBalanceInEth(address addr) public returns(uint){
		return ConvertLib.convert(balanceOf(addr),2);
	}

	///	The below method will be used to transfer to a particular address
	function balanceOf(address addr) public returns(uint) {
  		return balances[addr];
	}

	///	The below method will be used to transfer to a particular address from another address. Its PEER TO PEER transfer
	function transferFrom(address from, address receiver, uint amount) public returns (bool) {
		if (balances[from] < amount) return false;
		balances[from] -= amount;
		balances[receiver] += amount;
		Transfer(from, receiver, amount);
		return true;
	}
	
	///	The below method will be used to aprove the transaction
    function approve(address _spender, uint256 amount) public returns (bool success) {
        allowed[msg.sender][_spender] = amount;
        Approval(msg.sender, _spender, amount);
        return true;
    }

    function allowance(address _owner, address _spender) public returns (uint) {
		return allowed[_owner][_spender];
	}
}
