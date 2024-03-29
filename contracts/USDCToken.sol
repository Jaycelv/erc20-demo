pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract USDCToken is ERC20, Ownable {
    address public manager;

    constructor() ERC20("AAA", "AAA") Ownable(msg.sender) {
        _mint(0xe51555A2Cd2268D64D20f91DcDbE156B9D63D57a, 1000000 * 10**decimals()); 
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

    // 获取管理员
    function getManager() public view returns () {
        return manager;
    }
}
