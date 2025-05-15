// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PaymentGateway is Ownable {
    using SafeERC20 for IERC20;
    
    constructor() Ownable(msg.sender) {
    }

    struct PaymentData {
        string productName;
        uint256 orderId;
        uint8 quantity;
    }

    event PaymentReceived(
        address indexed buyer,
        address indexed seller,
        address indexed token,
        uint256 amount,
        PaymentData data
    );

    function payWithToken(
        address seller,
        address token,
        uint256 amount,
        PaymentData calldata data
    ) external {
        require(seller != address(0), "Seller address cannot be zero");
        require(token != address(0), "Token address cannot be zero");
        require(amount > 0, "Amount must be greater than zero");

        IERC20 erc20 = IERC20(token);

        uint256 balance = erc20.balanceOf(msg.sender);
        require(balance >= amount, "Insufficient token balance");

        uint256 allowance = erc20.allowance(msg.sender, address(this));
        require(allowance >= amount, "Insufficient token allowance");

        // Safe transfer
        erc20.safeTransferFrom(msg.sender, seller, amount);

        emit PaymentReceived(msg.sender, seller, token, amount, data);
    }
}
