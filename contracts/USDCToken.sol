pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract USDCToken is ERC20, Ownable {
    address public manager;

    constructor() ERC20("USDC", "USDC") Ownable(msg.sender) {
        _mint(0x0800406eD099daC10394b820Dab0c2677fd9C046, 1 * 10**decimals()); // 发行1个token给部署者，考虑了小数位
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
}
