// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProductRegistry {
    struct Product {
        uint256 manufacturerId;
        uint256 productSN;
        uint256 price;
        string name;
        string brand;
    }

    mapping(uint256 => Product) public products;
    uint256 public productCount;

    event ProductAdded(uint256 productId);

    function addProduct(
        uint256 _manufacturerId,
        uint256 _productSN,
        uint256 _price,
        string memory _name,
        string memory _brand
    ) external {
        productCount++;
        products[productCount] = Product(
            _manufacturerId,
            _productSN,
            _price,
            _name,
            _brand
        );
        emit ProductAdded(productCount);
    }
}
