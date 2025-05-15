// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
contract PaymentGateway {
    address public owner;
    address idrx = 0x18Bc5bcC660cf2B9cE3cd51a404aFe1a0cBD3C22;

    event PaymentReceived(
        address indexed buyer,
        address indexed seller,
        address token,
        uint256 amount,
        bytes32 dataHash
    );

    constructor() {
        owner = msg.sender;
    }

    function payWithToken(
        address seller,
        address token,
        uint256 amount,
        bytes32 dataHash
    ) external {
        require(seller != address(0), "Invalid seller address");
        require(token != address(0), "Invalid token");
        require(IERC20(token).balanceOf(msg.sender) >= amount, "Insufficient balance");
        require(IERC20(token).allowance(msg.sender, address(this)) >= amount, "Insufficient allowance");

        bool success = IERC20(token).transferFrom(msg.sender, seller, amount);
        require(success, "Token transfer failed");

        emit PaymentReceived(msg.sender, seller, token, amount, dataHash);
    }
}
