// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {PaymentGateway} from "../src/PaymentGateway.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract PaymentGatewayTest is Test {
    PaymentGateway public paymentGateway;

    address idrx = 0x18Bc5bcC660cf2B9cE3cd51a404aFe1a0cBD3C22;
    address alice = makeAddr("alice");
    address bob = makeAddr("bob");

    function setUp() public {
        paymentGateway = new PaymentGateway();
        vm.createSelectFork("https://base-mainnet.g.alchemy.com/v2/51MRDeFHeLtd5FrWrTMv0bsusLfs5n8r",30185468);
    }


    function test_PayWithToken() public {
        deal(idrx, address(alice), 17000e2);
        console.log("balance alice before::", IERC20(idrx).balanceOf(address(alice)));
        console.log("balance bob before::", IERC20(idrx).balanceOf(address(bob)));

        vm.startPrank(alice);
        IERC20(idrx).approve(address(paymentGateway), 17000e2);

        PaymentGateway.PaymentData memory data = PaymentGateway.PaymentData({
            productName: "karung",
            orderId: 1,
            quantity: 2
        });
        
        paymentGateway.payWithToken(bob, address(idrx), 17000e2, data);
        
        vm.stopPrank();
        console.log("balance alice after::", IERC20(idrx).balanceOf(address(alice)));
        console.log("balance bob after::", IERC20(idrx).balanceOf(address(bob)));
        assertEq(IERC20(idrx).balanceOf(address(bob)), 17000e2);
    }

    function test_PayWithTokenInsufficientAllowance() public {
        deal(idrx, address(alice), 17000e2);

        vm.startPrank(alice);
        // IERC20(idrx).approve(address(paymentGateway), 17000e2);

        PaymentGateway.PaymentData memory data = PaymentGateway.PaymentData({
            productName: "karung",
            orderId: 1,
            quantity: 2
        });
        
        vm.expectRevert("Insufficient token allowance");
        paymentGateway.payWithToken(bob, address(idrx), 17000e2, data);
        
        vm.stopPrank();
    }
}
