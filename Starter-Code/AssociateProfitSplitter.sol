pragma solidity ^0.5.0;

// lvl 1: equal split
contract AssociateProfitSplitter {
    // @TODO: Create three payable addresses representing `employee_one`, `employee_two` and `employee_three`.
    address payable public employee_one;
    address payable public employee_two;
    address payable public employee_three;
    //address payable public sender; 
    mapping(address => uint) balances;
    
    constructor(address payable _one, address payable _two, address payable _three) public {
        //sender = msg.sender; 
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }
    
   /*modifier onlyOwner {
        require (msg.sender == sender);
        _;
    }*/

    function balance() public view returns(uint) {
        return address(this).balance;
        
    }
    
  
    function deposit() public payable {
        // @TODO: Split `msg.value` into three
        uint amount = msg.value/3; // Your code here!

        // @TODO: Transfer the amount to each employee
        employee_one.transfer(amount);
        employee_two.transfer(amount);
        employee_three.transfer(amount);
        // @TODO: take care of a potential remainder by sending back to HR (`msg.sender`)
        return msg.sender.transfer(msg.value - amount*3);
    }

    function() external payable {
        deposit;
    }
    
}


pragma solidity ^0.5.0;

import "github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/math/SafeMath.sol";


// lvl 1: equal split
contract AssociateProfitSplitter {
     using SafeMath for uint;
    // @TODO: Create three payable addresses representing `employee_one`, `employee_two` and `employee_three`.
    address payable public employee_one = 0xAEEeb94aef66f7a6Be73EFcf1dbddd0d5298656a;
    address payable public employee_two = 0xa27a69D142f7292eF6453B71b0B58B29CEc24907;
    address payable public employee_three = 0xd36813C3731637E6e6616745FCdCf89afd61E013;

    constructor(address payable _one, address payable _two, address payable _three) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }

    function deposit() public payable {
        // @TODO: Split `msg.value` into three
        uint amount = msg.value / 3; // Your code here!

        // @TODO: Transfer the amount to each employee
        // Your code here!

        // @TODO: take care of a potential remainder by sending back to HR (`msg.sender`)
        // Your code here!
    }

    function() external payable {
        // @TODO: Enforce that the `deposit` function is called in the fallback function!
        // Your code here!
    }
}
