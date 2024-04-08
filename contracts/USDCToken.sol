pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract USDCToken is ERC20, Ownable {
    address public manager;

    constructor() ERC20("USD coin", "USDC") Ownable(msg.sender) {
        _mint(msg.sender, 1000000 * 10**decimals()); 
    }

    modifier onlyManager() {
        require(manager == msg.sender, "Caller is not the manager");
        _;
    }

    function mint(address to, uint256 amount) public onlyManager {
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) public onlyManager {
        _burn(from, amount);
    }

    function changeManager(address newManager) public onlyOwner {
        manager = newManager;
    }

    function getManager() public view returns (address) {
        return manager;
    }
}
