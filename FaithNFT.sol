// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract FaithNft is ERC721URIStorage {
    address private owner;

 constructor() ERC721("Faith", "FEE") {
        owner = msg.sender;
 }

    function mint(uint256 _tokenId, string memory _tokenURI) external {
        require( msg.sender == owner, "Only owner can mint");
        _setTokenURI (_tokenId,_tokenURI);
}
}

